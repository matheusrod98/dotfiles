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
vim.wo.foldenable = false
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.clipboard = "unnamedplus"
vim.wo.wrap = false
vim.o.termguicolors = true
vim.o.relativenumber = true
vim.opt.swapfile = false

vim.cmd([[
    let g:vimtex_view_method = 'zathura'
]])