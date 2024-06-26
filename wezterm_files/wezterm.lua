-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = "Catppuccin Macchiato"

-- Windows font: FiraMono Nerd Font Mono
-- Mac font: FiraCode Nerd Font Mono
-- Linux font: FiraCode Nerd Font Mono
config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 12
config.initial_cols = 120
config.intial_rows = 50

config.enable_tab_bar = true

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95
config.macos_window_background_blur = 8

-- and finally, return the configuration to wezterm
return config