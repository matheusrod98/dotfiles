vim.opt.termguicolors = true
vim.o.background = "dark"
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_comments = "true"
vim.g.tokyonight_italic_keywords = "false"
vim.g.tokyonight_transparent = "true"
vim.cmd[[colorscheme tokyonight]]

require('onedark').load()
require('onedark').setup {
	transparent = true
}
vim.cmd[[colorscheme onedark]]
