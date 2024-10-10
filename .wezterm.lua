local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- NOTE: Disable font and color_scheme if missing in your system
-- NOTE: Added some padding at the top for integrated buttons

config = {
	automatically_reload_config = true,
	enable_scroll_bar = false,
	enable_tab_bar = false,
	use_fancy_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "INTEGRATED_BUTTONS | RESIZE",
	window_background_opacity = 1.0,
	window_padding = { left = 3, right = 3, top = 24, bottom = 0 },
	-- background = {
	-- 	{
	-- 		source = {
	-- 			File = "",
	-- 		},
	-- 		width = "100%",
	-- 		height = "100%",
	-- 		opacity = 0.55,
	-- 	},
	-- },
	default_cursor_style = "SteadyBlock",
	font = wezterm.font("JetBrainsMonoNL Nerd Font Propo", { weight = "Bold", stretch = "Normal", italic = false }),
	font_size = 16,
	-- color_scheme = "Pro",
	-- color_scheme = "Catppuccin Mocha",
	color_scheme = "Night Owl (Gogh)",
	send_composed_key_when_left_alt_is_pressed = true,
	send_composed_key_when_right_alt_is_pressed = true,
}

return config
