-- require('onedark').setup  {
--     style = 'deep', -- Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--     transparent = true,
--     term_colors = true,
--
--     code_style = {
--         comments = 'italic',
--         keywords = 'none',
--         functions = 'none',
--         strings = 'none',
--         variables = 'none'
--     },
--
--     diagnostics = {
--         darker = true,
--         undercurl = true,
--         background = false,
--     },
-- }
--
-- require('onedark').load()

vim.g.tokyonight = storm -- storm, night or day.
vim.g.tokyonight_transparent = true
vim.g.tokyonight_dark_float = false
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_colors = { bg_float = "none"}

vim.cmd[[colorscheme tokyonight]]

vim.cmd([[
    hi Comment guifg=#8087A2
    hi LineNr guifg=#A5ADCB
    hi CursorLineNr guifg=#A5ADCB
    hi FloatBorder guibg=NONE
    hi DiagnosticVirtualTextError guibg=NONE
    hi DiagnosticVirtualTextWarn guibg=NONE
    hi DiagnosticVirtualTextInfo guibg=NONE
    hi DiagnosticVirtualTextHint guibg=NONE
]])
