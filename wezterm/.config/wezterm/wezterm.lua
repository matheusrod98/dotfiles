local wezterm = require 'wezterm'
local config = {}

-- Cursor
config.default_cursor_style = 'SteadyBar'

-- Scrollback
config.scrollback_lines = 100000

-- Colorscheme
config.color_scheme = 'GruvboxDarkHard'

-- Tab bar
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true

-- Window padding
config.window_padding = {
    left = 4,
    right = 4,
    top = 4,
    bottom = 4,
}

-- Font
config.font = wezterm.font 'FiraCode Nerd Font'
config.font_size = 14
config.freetype_load_target = 'Light'
config.freetype_render_target = 'HorizontalLcd'

-- Keybindings
local act = wezterm.action

config.keys = {
    { key = 'Space', mods = 'ALT', action = act.ActivateCommandPalette },
    { key = 's', mods = 'ALT', action = act.ActivateCopyMode },

    -- Tabs
    { key = 'n', mods = 'ALT', action = act.SpawnTab 'CurrentPaneDomain' },
    { key = ',', mods = 'ALT', action = act.ActivateTabRelative(-1) },
    { key = '.', mods = 'ALT', action = act.ActivateTabRelative(1) },
    { key = ',', mods = 'ALT|SHIFT', action = act.MoveTabRelative(-1) },
    { key = '.', mods = 'ALT|SHIFT', action = act.MoveTabRelative(1) },
    { key = 't', mods = 'ALT', action = act.ActivateLastTab },

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
