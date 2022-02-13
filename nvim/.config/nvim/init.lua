-- Plugins.
local use = require('packer').use
require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-commentary'
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}
	use {'nvim-telescope/telescope-fzf-native.nvim', 
		run = 'make' 
	}
    	use {
        	'nvim-treesitter/nvim-treesitter',
        	run = ':TSUpdate'
    	}
	use {
  		'nvim-lualine/lualine.nvim',
	  	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'L3MON4D3/LuaSnip'
	use 'neovim/nvim-lspconfig'
	use 'onsails/lspkind-nvim'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'TovarishFin/vim-solidity'
    use {
        'google/yapf', 
        rtp = 'plugins/vim', 
        ft = 'python' }
end)

-- General settings.
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
vim.wo.foldenable = false
vim.o.shortmess = vim.o.shortmess .. "c"

-- Leader key.
vim.g.mapleader = ","
