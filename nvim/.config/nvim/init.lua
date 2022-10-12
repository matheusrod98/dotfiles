-- Plugins.
local use = require('packer').use
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'navarasu/onedark.nvim'
    use 'neovim/nvim-lspconfig'
    use 'numToStr/Comment.nvim'
    use 'kdheepak/lazygit.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'folke/trouble.nvim'
    use 'https://codeberg.org/esensar/nvim-dev-container'
    use {'akinsho/bufferline.nvim', tag = "v2.*"}
    use 'stevearc/aerial.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/plenary.nvim'
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'kyazdani42/nvim-tree.lua' -- Maybe don't need it.
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'onsails/lspkind.nvim'
    use {
        'chipsenkbeil/distant.nvim',
        config = function()
            require('distant').setup {
                ['*'] = require('distant.settings').chip_default()
            }
        end
    }
end)

-- General settings.
vim.o.path = vim.o.path .. "**"
vim.o.number = true
vim.bo.smartindent = true
vim.bo.sw = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.expandtab = true
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.cmdheight = 2
vim.o.mouse = "a"
vim.o.signcolumn="yes"
vim.wo.foldenable = false
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.clipboard = 'unnamedplus'

-- Leader key.
vim.g.mapleader = ","
