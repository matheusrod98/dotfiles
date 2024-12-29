return {
    "brenoprata10/nvim-highlight-colors",
    config = function()
        require("nvim-highlight-colors").setup {
            ---@usage 'background'|'foreground'|'virtual'
            render = 'background',

            ---@usage 'inline'|'eol'|'eow'
            virtual_symbol_position = 'inline',

            enable_hex = true,
            enable_short_hex = true,
            enable_rgb = true,
            enable_hsl = true,
            enable_var_usage = true,
            enable_named_colors = true,
            enable_tailwind = true
        }
    end
}
