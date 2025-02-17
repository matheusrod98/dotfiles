vim.o.path = vim.o.path .. "**"
vim.g.have_nerd_font = true
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
vim.wo.wrap = false
vim.o.termguicolors = true
vim.o.relativenumber = true
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.opt.breakindent = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.list = true
vim.opt.listchars = {tab = "» ", trail = "·", nbsp = "␣"}
vim.opt.inccommand = "split"
vim.opt.scrolloff = 10
vim.opt.laststatus = 3
vim.schedule(function() vim.opt.clipboard = 'unnamedplus' end)
vim.opt.undofile = true
vim.opt.list = true
vim.opt.listchars = {tab = '» ', trail = '·', nbsp = '␣'}
vim.opt.autoread = true

vim.cmd([[
    let g:netrw_banner = 0
]])

vim.cmd([[
    :autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q")
]])

vim.filetype.add({
    pattern = {
        ["%.env%.?[%w_.-]*"] = "dotenv",
        [".*/hypr/.*%.conf"] = "hyprlang"
    }
})

vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
