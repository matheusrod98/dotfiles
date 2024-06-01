local wezterm = require("wezterm")
local config = {}

config.tab_max_width = 100
config.window_padding = { left = 4, right = 4, top = 4, bottom = 4 }
config.font_size = 13
config.bold_brightens_ansi_colors = false
config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"
config.default_cursor_style = "BlinkingBar"
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.scrollback_lines = 100000
config.color_scheme = 'Material Darker (base16)'
config.colors = {
	background = "#111111",
	tab_bar = {
		background = "#303030",
		active_tab = {
			bg_color = "#111111",
			fg_color = "#eeffff",
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},
		inactive_tab = {
			bg_color = "#303030",
			fg_color = "#606060",
		},
		inactive_tab_hover = {
			bg_color = "#111111",
			fg_color = "#eeffff",
			italic = false,
		},
		new_tab = {
			bg_color = "#303030",
			fg_color = "#606060",
		},
		new_tab_hover = {
			bg_color = "#111111",
			fg_color = "#eeffff",
			italic = false,
		},
	},
}

-- Keybindings
local act = wezterm.action
config.keys = {
	-- Clipboard
	{ key = "C", mods = "SHIFT|CTRL", action = act.CopyTo("ClipboardAndPrimarySelection") },
	{ key = "V", mods = "SHIFT|CTRL", action = act.PasteFrom("Clipboard") },

	-- Scrollback
	{ key = "s", mods = "ALT", action = act.ActivateCopyMode },
	{ key = "UpArrow", mods = "SHIFT", action = act.ScrollToPrompt(-1) },
	{ key = "DownArrow", mods = "SHIFT", action = act.ScrollToPrompt(1) },

	-- Tabs
	{ key = "n", mods = "ALT", action = act.SpawnTab("CurrentPaneDomain") },
	{ key = ",", mods = "ALT", action = act.ActivateTabRelative(-1) },
	{ key = ".", mods = "ALT", action = act.ActivateTabRelative(1) },
	{ key = "<", mods = "ALT|SHIFT", action = act.MoveTabRelative(-1) },
	{ key = ">", mods = "ALT|SHIFT", action = act.MoveTabRelative(1) },
	{ key = "Tab", mods = "ALT", action = act.ActivateLastTab },
	{
		key = "r",
		mods = "ALT",
		action = act.PromptInputLine({
			description = "Enter new name for tab",
			action = wezterm.action_callback(function(window, pane, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
	{ key = "1", mods = "ALT", action = act.ActivateTab(0) },
	{ key = "2", mods = "ALT", action = act.ActivateTab(1) },
	{ key = "3", mods = "ALT", action = act.ActivateTab(2) },
	{ key = "4", mods = "ALT", action = act.ActivateTab(3) },
	{ key = "5", mods = "ALT", action = act.ActivateTab(4) },
	{ key = "6", mods = "ALT", action = act.ActivateTab(5) },
	{ key = "7", mods = "ALT", action = act.ActivateTab(6) },
	{ key = "8", mods = "ALT", action = act.ActivateTab(7) },
	{ key = "9", mods = "ALT", action = act.ActivateTab(8) },
	{ key = "0", mods = "ALT", action = act.ActivateTab(9) },

	-- Panes
	{ key = "h", mods = "ALT", action = act.ActivatePaneDirection("Left") },
	{ key = "l", mods = "ALT", action = act.ActivatePaneDirection("Right") },
	{ key = "k", mods = "ALT", action = act.ActivatePaneDirection("Up") },
	{ key = "j", mods = "ALT", action = act.ActivatePaneDirection("Down") },
	{ key = "h", mods = "ALT|CTRL", action = act.AdjustPaneSize({ "Left", 5 }) },
	{ key = "j", mods = "ALT|CTRL", action = act.AdjustPaneSize({ "Down", 5 }) },
	{ key = "k", mods = "ALT|CTRL", action = act.AdjustPaneSize({ "Up", 5 }) },
	{ key = "l", mods = "ALT|CTRL", action = act.AdjustPaneSize({ "Right", 5 }) },
	{ key = "-", mods = "ALT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "=", mods = "ALT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "q", mods = "ALT", action = act.CloseCurrentPane({ confirm = false }) },

	-- Zoom
	{ key = "=", mods = "CTRL|SHIFT", action = act.IncreaseFontSize },
	{ key = "-", mods = "CTRL|SHIFT", action = act.DecreaseFontSize },
	{ key = "0", mods = "CTRL", action = act.ResetFontSize },
}

config.key_tables = {
	copy_mode = {
		{ key = "y", mods = "CTRL", action = act.ScrollByLine(-1) },
		{ key = "e", mods = "CTRL", action = act.ScrollByLine(1) },
		{ key = "/", mods = "NONE", action = act.Search({ CaseInSensitiveString = "" }) },
		{ key = "w", mods = "NONE", action = act.CopyMode("MoveForwardWord") },
		{
			key = "b",
			mods = "NONE",
			action = act.CopyMode("MoveBackwardWord"),
		},
		{ key = "q", mods = "NONE", action = act.CopyMode("Close") },
		{
			key = "v",
			mods = "NONE",
			action = act.CopyMode({ SetSelectionMode = "Cell" }),
		},
		{
			key = "$",
			mods = "NONE",
			action = act.CopyMode("MoveToEndOfLineContent"),
		},
		{ key = ",", mods = "NONE", action = act.CopyMode("JumpReverse") },
		{ key = "0", mods = "NONE", action = act.CopyMode("MoveToStartOfLine") },
		{ key = ";", mods = "NONE", action = act.CopyMode("JumpAgain") },
		{
			key = "F",
			mods = "SHIFT",
			action = act.CopyMode({ JumpBackward = { prev_char = false } }),
		},
		{
			key = "G",
			mods = "SHIFT",
			action = act.CopyMode("MoveToScrollbackBottom"),
		},
		{
			key = "T",
			mods = "SHIFT",
			action = act.CopyMode({ JumpBackward = { prev_char = true } }),
		},
		{
			key = "V",
			mods = "SHIFT",
			action = act.CopyMode({ SetSelectionMode = "Line" }),
		},
		{
			key = "^",
			mods = "NONE",
			action = act.CopyMode("MoveToStartOfLineContent"),
		},
		{ key = "b", mods = "CTRL", action = act.CopyMode("PageUp") },
		{
			key = "d",
			mods = "CTRL",
			action = act.CopyMode({ MoveByPage = 0.5 }),
		},
		{
			key = "e",
			mods = "NONE",
			action = act.CopyMode("MoveForwardWordEnd"),
		},
		{
			key = "f",
			mods = "NONE",
			action = act.CopyMode({ JumpForward = { prev_char = false } }),
		},
		{ key = "f", mods = "CTRL", action = act.CopyMode("PageDown") },
		{
			key = "g",
			mods = "NONE",
			action = act.CopyMode("MoveToScrollbackTop"),
		},
		{ key = "h", mods = "NONE", action = act.CopyMode("MoveLeft") },
		{ key = "j", mods = "NONE", action = act.CopyMode("MoveDown") },
		{ key = "k", mods = "NONE", action = act.CopyMode("MoveUp") },
		{ key = "l", mods = "NONE", action = act.CopyMode("MoveRight") },
		{
			key = "o",
			mods = "NONE",
			action = act.CopyMode("MoveToSelectionOtherEnd"),
		},
		{
			key = "t",
			mods = "NONE",
			action = act.CopyMode({ JumpForward = { prev_char = true } }),
		},
		{
			key = "u",
			mods = "CTRL",
			action = act.CopyMode({ MoveByPage = -0.5 }),
		},
		{
			key = "v",
			mods = "CTRL",
			action = act.CopyMode({ SetSelectionMode = "Block" }),
		},
		{
			key = "y",
			mods = "NONE",
			action = act.Multiple({
				{ CopyTo = "ClipboardAndPrimarySelection" },
				{ CopyMode = "Close" },
			}),
		},
	},
	search_mode = {
		{ key = "Enter", mods = "NONE", action = act.ActivateCopyMode },
		{
			key = "Escape",
			mods = "NONE",
			action = act.Multiple({
				act.ActivateCopyMode,
				act.CopyMode("ClearPattern"),
			}),
		},
		{ key = "n", mods = "NONE", action = act.CopyMode("NextMatch") },
		{ key = "n", action = act.CopyMode("PriorMatch") },
		{ key = "n", mods = "SHIFT", action = act.CopyMode("NextMatch") },
	},
}

return config
