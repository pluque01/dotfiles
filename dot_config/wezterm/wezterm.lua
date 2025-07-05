local wezterm = require("wezterm")
local config = {}

config.window_decorations = "RESIZE"
config.color_scheme = "Catppuccin Frappe"
config.window_background_opacity = 0.75

config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font_size = 11.0
config.front_end = "WebGpu"

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

config.default_prog = { "pwsh" }
config.default_domain = "WSL:Ubuntu-22.04"

-- Keybinds
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 9999 }
config.keys = {
	{
		key = "|",
		mods = "LEADER",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	{
		key = "-",
		mods = "LEADER",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	{
		key = "ñ",
		mods = "LEADER",
		action = wezterm.action.SplitPane({
			direction = "Down",
			command = { domain = "CurrentPaneDomain" },
			size = { Percent = 15 },
		}),
	},

	{
		key = "UpArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},

	{
		key = "DownArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},

	{
		key = "LeftArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},

	{
		key = "RightArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},

	{
		key = "UpArrow",
		mods = "ALT|CTRL",
		action = wezterm.action.AdjustPaneSize({ "Up", 1 }),
	},

	{
		key = "DownArrow",
		mods = "ALT|CTRL",
		action = wezterm.action.AdjustPaneSize({ "Down", 1 }),
	},

	{
		key = "LeftArrow",
		mods = "ALT|CTRL",
		action = wezterm.action.AdjustPaneSize({ "Left", 1 }),
	},

	{
		key = "RightArrow",
		mods = "ALT|CTRL",
		action = wezterm.action.AdjustPaneSize({ "Right", 1 }),
	},

	{
		key = "w",
		mods = "LEADER",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},

	{
		key = "t",
		mods = "LEADER",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	-- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
	{
		key = "a",
		mods = "LEADER|CTRL",
		action = wezterm.action.SendKey({ key = "a", mods = "CTRL" }),
	},

	{
		key = "h",
		mods = "LEADER",
		action = wezterm.action.ActivateTabRelative(-1),
	},

	{
		key = "l",
		mods = "LEADER",
		action = wezterm.action.ActivateTabRelative(1),
	},
}

return config
