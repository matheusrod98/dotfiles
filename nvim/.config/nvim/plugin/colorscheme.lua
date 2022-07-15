require('onedark').load()
require('onedark').setup {
	transparent = true,
    term_colors = true,
    globalstatu = true,
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none',
    },
    diagnostics = {
        darker = true,
        undercurl = false,
        background = false,
    }
}
vim.cmd[[colorscheme onedark]]
