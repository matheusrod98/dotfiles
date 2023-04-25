-- General settings.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.path = vim.o.path .. "**"
vim.o.number = true
vim.bo.sw = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.expandtab = true
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
vim.o.scrolloff = 8

-- Leader key.
vim.g.mapleader = ","

-- Mappings
---- Move blocks of code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

---- Center cursor after half-page movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

---- Center cursor after paragraph movement
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")

---- Center cursor after bottom file movement
vim.keymap.set("n", "G", "Gzz")

---- Center search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

---- Window management

---- Type a JSON object
vim.keymap.set("n", "<leader>jt", ":w !command quicktype -o % --just-types<CR>e")

-- Plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { 'rose-pine/neovim', name = 'rose-pine' },
    { "nvim-lua/plenary.nvim" },
    { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
    { "windwp/nvim-ts-autotag" },
    { "zbirenbaum/copilot.lua", cmd = "Copilot", event = "InsertEnter" },
    { "glepnir/dashboard-nvim", event = "VimEnter" },
    { "kyazdani42/nvim-web-devicons" },
    { "akinsho/bufferline.nvim" },
    { "nvim-lualine/lualine.nvim" },
    { "nvim-tree/nvim-tree.lua" },
    { "nvim-telescope/telescope.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", run = "make", name = "fzf" },
    { "numToStr/Comment.nvim" },
    { "windwp/nvim-autopairs" },
    { "lewis6991/gitsigns.nvim" },
    { "folke/which-key.nvim" },
    { "tpope/vim-surround" },
    { "rafamadriz/friendly-snippets" }, --Configure later.
    { "norcalli/nvim-colorizer.lua" },
    { "neovim/nvim-lspconfig" },
    { "jose-elias-alvarez/null-ls.nvim" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "jayp0521/mason-null-ls.nvim" },
    { "joechrisellis/lsp-format-modifications.nvim" },
    { "glepnir/lspsaga.nvim" },
    { "folke/trouble.nvim" },
    { "L3MON4D3/LuaSnip" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-emoji" },
    { "saadparwaiz1/cmp_luasnip" },
    { "onsails/lspkind.nvim" },
    { "edluffy/hologram.nvim" },
    { "mfussenegger/nvim-dap" },
    { "rcarriga/nvim-dap-ui" },
    { "jay-babu/mason-nvim-dap.nvim" }
}, {
    ui = {
        border = "rounded",
    },
})
