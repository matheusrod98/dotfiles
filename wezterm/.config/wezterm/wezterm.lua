local wezterm = require 'wezterm'
local config = {}

config.enable_kitty_graphics=true

config.color_scheme = 'Tokyo Night'
config.colors = {
    tab_bar = {
        background = '#16161E',
        new_tab = {
            bg_color = '#16161E',
            fg_color = '#7AA2F7',
        },
    },
}

config.window_close_confirmation = 'NeverPrompt'

config.default_cursor_style = 'SteadyBar'

config.scrollback_lines = 100000

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

config.window_padding = {
    left = 4,
    right = 4,
    top = 4,
    bottom = 4,
}

config.font = wezterm.font 'FiraCode Nerd Font'
config.font_size = 14

-- Keybindings
local act = wezterm.action
config.keys = {

    { key = 'Space', mods = 'ALT', action = act.ActivateCommandPalette },
    { key = 's', mods = 'ALT', action = act.ActivateCopyMode },
    { key = 'w', mods = 'ALT', action = act.ShowLauncherArgs { flags = 'FUZZY|WORKSPACES' } },

    -- Tabs
    { key = 'n', mods = 'ALT', action = act.SpawnTab 'CurrentPaneDomain' },
    { key = ',', mods = 'ALT', action = act.ActivateTabRelative(-1) },
    { key = '.', mods = 'ALT', action = act.ActivateTabRelative(1) },
    { key = '<', mods = 'ALT|SHIFT', action = act.MoveTabRelative(-1) },
    { key = '>', mods = 'ALT|SHIFT', action = act.MoveTabRelative(1) },
    { key = 't', mods = 'ALT', action = act.ActivateLastTab },
    { key = 'r', mods = 'ALT', action = act.PromptInputLine {
            description = 'Enter new name for tab',
            action = wezterm.action_callback(function(window, pane, line)
                if line then
                    window:active_tab():set_title(line)
                end
            end),
        },
    },

    -- Panes
    { key = 'h', mods = 'ALT', action = act.ActivatePaneDirection 'Left' },
    { key = 'l', mods = 'ALT', action = act.ActivatePaneDirection 'Right' },
    { key = 'k', mods = 'ALT', action = act.ActivatePaneDirection 'Up' },
    { key = 'j', mods = 'ALT', action = act.ActivatePaneDirection 'Down' },
    { key = 'h', mods = 'ALT|CTRL', action = act.AdjustPaneSize { 'Left', 5 } },
    { key = 'j', mods = 'ALT|CTRL', action = act.AdjustPaneSize { 'Down', 5 } },
    { key = 'k', mods = 'ALT|CTRL', action = act.AdjustPaneSize { 'Up', 5 } },
    { key = 'l', mods = 'ALT|CTRL', action = act.AdjustPaneSize { 'Right', 5 } },
    { key = '-', mods = 'ALT', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
    { key = '=', mods = 'ALT', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = 'q', mods = 'ALT', action = act.CloseCurrentPane { confirm = false } },
}

return config
