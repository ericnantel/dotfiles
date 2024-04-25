local wezterm = require("wezterm")

local config = {}

--config.color_scheme = "catppuccin"
--config.color_scheme = "Brogrammer"
config.color_scheme = "Pro"

--config.color_scheme = "JetBrains Darcula"
--config.color_scheme = "Zenburn"

config.enable_scroll_bar = false
config.enable_tab_bar = false
config.use_fancy_tab_bar = false

--config.font = wezterm.font("JetBrainsMonoNL Nerd Font Propo", { weight = "Bold", stretch = "Normal", italic = false })
config.font_size = 16

return config