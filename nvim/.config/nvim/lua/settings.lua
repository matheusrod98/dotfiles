vim.o.path = vim.o.path .. "**"
vim.o.number = true
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.cmdheight = 2
vim.o.mouse = "a"
vim.o.signcolumn = "yes"
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.clipboard = "unnamedplus"
vim.wo.wrap = false
vim.o.termguicolors = true
vim.o.relativenumber = true
vim.o.swapfile = false
vim.cmd("colorscheme gruvbox")

vim.cmd([[
    let g:netrw_banner = 0
]])

vim.cmd([[
    :autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q")
]])

vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
