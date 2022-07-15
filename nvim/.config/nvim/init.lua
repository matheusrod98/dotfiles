-- Plugins.
local use = require('packer').use
require('packer').startup(function()
	use 'wbthomason/packer.nvim'
    use 'navarasu/onedark.nvim'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-commentary'
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}
	use {
        'nvim-telescope/telescope-fzf-native.nvim', 
        run = 'make' 
	}
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	use 'nvim-lualine/lualine.nvim'
	use 'neovim/nvim-lspconfig'
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
vim.o.signcolumn="yes"
vim.wo.foldenable = false
vim.o.shortmess = vim.o.shortmess .. "c"

-- Leader key.
vim.g.mapleader = ","
