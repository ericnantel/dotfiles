local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- NOTE: Disable font and color_scheme if missing in your system
-- NOTE: Added some padding at the top for integrated buttons
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	-- NOTE: On Windows, Using PowerShell with Starship
	default_prog = { "powershell", "-NoLogo" }
end

local window_decorations = "INTEGRATED_BUTTONS | RESIZE"
local window_padding = { left = 3, right = 3, top = "1cell", bottom = 0 }
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	-- NOTE: On Windows, Integrated Buttons are not working
	window_decorations = "TITLE | RESIZE"
	window_padding = { left = 3, right = 3, top = 0, bottom = 0 }
elseif wezterm.target_triple == "x86_64-unknown-linux-gnu" then
	-- NOTE: On Ubuntu 24.10, Integrated Buttons are not working
	window_decorations = "TITLE | RESIZE"
	window_padding = { left = 3, right = 3, top = 0, bottom = 0 }
end

config = {
	default_prog = default_prog,
	automatically_reload_config = true,
	enable_scroll_bar = false,
	enable_tab_bar = false,
	use_fancy_tab_bar = false,
	-- max_fps = 120,
	window_background_opacity = 1.0,
	window_close_confirmation = "NeverPrompt",
	window_decorations = window_decorations,
	window_padding = window_padding,
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
	-- font = wezterm.font("JetBrainsMono"),
	font = wezterm.font("JetBrainsMonoNL Nerd Font Propo", { weight = "Bold", stretch = "Normal", italic = false }),
	font_size = 16,
	-- color_scheme = "Pro",
	-- color_scheme = "Catppuccin Mocha",
	color_scheme = "Night Owl (Gogh)",
	send_composed_key_when_left_alt_is_pressed = true,
	send_composed_key_when_right_alt_is_pressed = true,
}

return config
