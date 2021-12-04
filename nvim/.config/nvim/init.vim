" Plugins.
call plug#begin('~/.config/nvim/plugged')
Plug 'sainnhe/sonokai'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
call plug#end()

" General settings.
set path+=**
set number
set sw=4 tabstop=4 softtabstop=4 expandtab 
set smartcase ignorecase
set cmdheight=2
set mouse=a
set nofoldenable

" Colorscheme.
set termguicolors
set background=dark
let g:sonokai_better_performance=1
let g:sonokai_transparent_background=1
let g:sonokai_style='shusia'
colorscheme sonokai
