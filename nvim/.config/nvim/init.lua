-- General settings.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
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
vim.o.scrolloff = 8
vim.opt.swapfile = false

-- Latex TODO: Put somewherelse later
vim.cmd([[
    let g:vimtex_view_method = 'zathura'
]])

-- Restore cursor shape after exit
vim.api.nvim_create_autocmd("VimLeave", {
    callback = function()
        vim.cmd [[set guicursor=a:ver100]]
    end,
})

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

---- Center search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

---- Window management

-- Plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    { "nvim-tree/nvim-tree.lua" },
    { "folke/which-key.nvim" },
    { "zbirenbaum/copilot.lua", cmd = "Copilot", event = "InsertEnter" },
    { "windwp/nvim-autopairs" },
    { "numToStr/Comment.nvim", lazy = false },
    { "kylechui/nvim-surround", version = "*", event = "VeryLazy" },
    { "windwp/nvim-ts-autotag" },
    { "norcalli/nvim-colorizer.lua" },
    { "nvim-lua/plenary.nvim" },
    -- {
    --     "NeogitOrg/neogit",
    --     dependencies = {
    --         "nvim-lua/plenary.nvim",
    --         "nvim-telescope/telescope.nvim",
    --         "sindrets/diffview.nvim",
    --     },
    --     config = true
    -- },
    { "lewis6991/gitsigns.nvim" },
    { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
    { "nvim-lualine/lualine.nvim" },
    { "akinsho/bufferline.nvim" },
    { "kyazdani42/nvim-web-devicons" },
    { "glepnir/dashboard-nvim", event = "VimEnter" },
    { "ellisonleao/gruvbox.nvim", priority = 1000 },
    { "nvim-telescope/telescope.nvim" },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    {
        "L3MON4D3/LuaSnip",
        version = "2.*",
        build = "make install_jsregexp",
        dependencies = { "rafamadriz/friendly-snippets" }
    },
    { "neovim/nvim-lspconfig" },
    { "jose-elias-alvarez/null-ls.nvim" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "jayp0521/mason-null-ls.nvim" },
    { "glepnir/lspsaga.nvim" },
    { "folke/trouble.nvim" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-emoji" },
    { "saadparwaiz1/cmp_luasnip" },
    { "amarakon/nvim-cmp-buffer-lines" },
    { "hrsh7th/cmp-calc" },
    { "davidsierradz/cmp-conventionalcommits" },
    { "onsails/lspkind.nvim" },
    { "joechrisellis/lsp-format-modifications.nvim" },
    -- TODO Configure later.
    { "mfussenegger/nvim-dap" },
    { "rcarriga/nvim-dap-ui" },
    { "jay-babu/mason-nvim-dap.nvim" },
    { "pmizio/typescript-tools.nvim" },
    { "lervag/vimtex" },
    {
        "roobert/tailwindcss-colorizer-cmp.nvim",
        config = function()
	require("tailwindcss-colorizer-cmp").setup({
		color_square_width = 2,
	})
        end
    },

}, {
        ui = {
            border = "rounded",
        },
    })
