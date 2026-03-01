local wezterm = require("wezterm")
local mux = wezterm.mux
local config = {}
local act = wezterm.action
local theme = require("lua/rose-pine").main

-- Window Settings
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

-- Font Settings
-- config.line_height = 1
config.font_size = 13
config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
	"JetBrainsMono Nerd Font Mono",
	"JetBrainsMono Nerd Font Propo",
})

-- Appearance
-- config.color_scheme = "tokyonight"
config.colors = theme.colors()
config.window_frame = theme.window_frame()
config.window_background_opacity = 0.85
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = "1cell",
	right = "1cell",
	top = "0.5cell",
	bottom = "0.5cell",
}
config.scrollback_lines = 3000
config.default_workspace = "Home"

-- Tab Bar
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.status_update_interval = 1000

-- Keymaps
config.keys = {
	{
		key = ".",
		mods = "CTRL",
		action = act.ShowTabNavigator,
	},
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	{
		key = ",",
		mods = "CMD",
		action = act.SpawnCommandInNewTab({
			cwd = os.getenv("WEZTERM_CONFIG_DIR"),
			set_environment_variables = {
				TERM = "screen-256color",
			},
			args = {
				"/usr/sbin/nvim",
				os.getenv("WEZTERM_CONFIG_FILE"),
			},
		}),
	},
}

return config
