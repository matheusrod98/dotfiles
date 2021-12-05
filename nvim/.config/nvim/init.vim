" Plugins.
call plug#begin('~/.config/nvim/plugged')
Plug 'sainnhe/everforest'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'hrsh7th/vim-vsnip'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-vsnip'
call plug#end()

" General settings.
set path+=**
set number
set sw=4 tabstop=4 softtabstop=4 expandtab 
set smartcase ignorecase
set cmdheight=2
set mouse=a
set nofoldenable
set shortmess+=c
