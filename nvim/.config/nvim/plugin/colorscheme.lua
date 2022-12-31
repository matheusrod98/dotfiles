-- require('rose-pine').setup({
--     --- @usage 'main' | 'moon'
--     dark_variant = 'main',
--     dim_nc_background = false,
--     disable_background = true,
--     disable_float_background = true,
-- })
-- vim.cmd('colorscheme rose-pine')
require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = {
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true,
    term_colors = true,
})
vim.cmd.colorscheme "catppuccin"
