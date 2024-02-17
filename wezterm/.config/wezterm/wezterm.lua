local wezterm = require "wezterm"
local config = {}

config.enable_scroll_bar = true
config.enable_wayland = true
config.enable_kitty_graphics = true
config.window_close_confirmation = "NeverPrompt"
config.default_cursor_style = "SteadyBar"
config.scrollback_lines = 100000
config.color_scheme = 'tokyonight_night'
config.window_padding = {
    left = 4,
    right = 4,
    top = 4,
    bottom = 4,
}
config.font = wezterm.font "CommitMono"
config.font_size = 14

-- Keybindings
local act = wezterm.action
config.keys = {

    -- Scrollback
    { key = "s", mods = "ALT", action = act.ActivateCopyMode },

    -- Tabs
    { key = "n", mods = "ALT", action = act.SpawnTab "CurrentPaneDomain" },
    { key = ",", mods = "ALT", action = act.ActivateTabRelative(-1) },
    { key = ".", mods = "ALT", action = act.ActivateTabRelative(1) },
    { key = "<", mods = "ALT|SHIFT", action = act.MoveTabRelative(-1) },
    { key = ">", mods = "ALT|SHIFT", action = act.MoveTabRelative(1) },
    { key = "t", mods = "ALT", action = act.ActivateLastTab },
    { key = "r", mods = "ALT", action = act.PromptInputLine {
            description = "Enter new name for tab",
            action = wezterm.action_callback(function(window, pane, line)
                if line then
                    window:active_tab():set_title(line)
                end
            end),
        },
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
    { key = "h", mods = "ALT", action = act.ActivatePaneDirection "Left" },
    { key = "l", mods = "ALT", action = act.ActivatePaneDirection "Right" },
    { key = "k", mods = "ALT", action = act.ActivatePaneDirection "Up" },
    { key = "j", mods = "ALT", action = act.ActivatePaneDirection "Down" },
    { key = "h", mods = "ALT|CTRL", action = act.AdjustPaneSize { "Left", 5 } },
    { key = "j", mods = "ALT|CTRL", action = act.AdjustPaneSize { "Down", 5 } },
    { key = "k", mods = "ALT|CTRL", action = act.AdjustPaneSize { "Up", 5 } },
    { key = "l", mods = "ALT|CTRL", action = act.AdjustPaneSize { "Right", 5 } },
    { key = "-", mods = "ALT", action = act.SplitVertical { domain = "CurrentPaneDomain" } },
    { key = "=", mods = "ALT", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { key = "q", mods = "ALT", action = act.CloseCurrentPane { confirm = false } },
}

config.key_tables = {
    copy_mode = {
        { key = "/", mods = "NONE", action = act.Search { CaseInSensitiveString = "" }},
        { key = 'q', mods = 'NONE', action = act.CopyMode 'Close' },
        { key = 'V', mods = 'NONE', action = act.CopyMode { SetSelectionMode = 'Cell' } },
        { key = 'V', mods = 'SHIFT', action = act.CopyMode { SetSelectionMode = 'Line' } },
        { key = '0', mods = 'NONE', action = act.CopyMode 'MoveToStartOfLine' },
        { key = '$', mods = 'NONE', action = act.CopyMode 'MoveToEndOfLineContent' },
        { key = 'G', mods = 'SHIFT', action = act.CopyMode 'MoveToScrollbackBottom' },
        { key = '^', mods = 'NONE', action = act.CopyMode 'MoveToStartOfLineContent' },
        { key = 'b', mods = 'NONE', action = act.CopyMode 'MoveBackwardWord' },
        { key = 'b', mods = 'CTRL', action = act.CopyMode 'PageUp' },
        { key = 'c', mods = 'CTRL', action = act.CopyMode 'Close' },
        { key = 'd', mods = 'CTRL', action = act.CopyMode { MoveByPage = 0.5 } },
        { key = 'f', mods = 'CTRL', action = act.CopyMode 'PageDown' },
        { key = 'h', mods = 'NONE', action = act.CopyMode 'MoveLeft' },
        { key = 'j', mods = 'NONE', action = act.CopyMode 'MoveDown' },
        { key = 'k', mods = 'NONE', action = act.CopyMode 'MoveUp' },
        { key = 'l', mods = 'NONE', action = act.CopyMode 'MoveRight' },
        { key = 'u', mods = 'CTRL', action = act.CopyMode { MoveByPage = -0.5 } },
        { key = 'v', mods = 'NONE', action = act.CopyMode { SetSelectionMode = 'Cell' } },
        { key = 'v', mods = 'CTRL', action = act.CopyMode { SetSelectionMode = 'Block' } },
        { key = 'y', mods = 'NONE', action = act.Multiple { { CopyTo = 'ClipboardAndPrimarySelection' }, { CopyMode = 'Close' } }, },
        { key = 'n', mods = 'NONE', action = act.CopyMode 'NextMatch' },
        { key = 'n', mods = 'SHIFT', action = act.CopyMode 'PriorMatch' },
    },
    search_mode = {
        { key = 'Escape', mods = 'NONE', action = act.Search { CaseInSensitiveString = "" }},
        { key = 'Enter', mods = 'NONE', action = act.CopyMode 'AcceptPattern' },
    },
}

return config
