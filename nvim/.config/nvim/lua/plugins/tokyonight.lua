return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()

        require("tokyonight").setup({
            style = "night",
            light_style = "day",
            transparent = false,
            terminal_colors = true,
            styles = {
                comments = { italic = true },
                keywords = { italic = true },
                functions = {},
                variables = {},
                sidebars = "dark", 
                floats = "dark",
            },
            day_brightness = 0.3,
            hide_inactive_statusline = false,
            dim_inactive = true,
            lualine_bold = false,
        })

        vim.cmd[[colorscheme tokyonight]]
    end
}
