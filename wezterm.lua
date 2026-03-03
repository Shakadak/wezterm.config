-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

local is_windows <const> = wezterm.target_triple:find("windows") ~= nil

if is_windows then
  config.default_domain = 'WSL:Ubuntu'
end
-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 10
config.color_scheme = 'Solarized Light (Gogh)'

config.default_prog = {'/usr/bin/zsh'}

-- Finally, return the configuration to wezterm:
return config
