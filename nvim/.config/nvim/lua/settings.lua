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
vim.opt.inccommand = "split"
vim.opt.scrolloff = 10
vim.opt.laststatus = 3
vim.schedule(function() vim.opt.clipboard = 'unnamedplus' end)
vim.opt.undofile = true
vim.opt.autoread = true
vim.cmd.colorscheme "catppuccin"
vim.opt.confirm = true
-- vim.o.foldcolumn = nil
-- vim.o.foldenable = true
-- vim.opt.listchars = {tab = '» ', trail = '·', nbsp = '␣'}
-- vim.opt.cursorline = true
-- vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
-- vim.o.foldlevelstart = 99

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

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank',
                                        {clear = true}),
    callback = function() vim.highlight.on_yank() end
})
