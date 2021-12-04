" Plugins.
call plug#begin('~/.config/nvim/plugged')
Plug 'sainnhe/sonokai'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" General settings.
set path+=**
set number
set sw=4 tabstop=4 softtabstop=4 expandtab 
set smartcase ignorecase
set cmdheight=2
set mouse=a

" Netrw.
let g:netrw_banner=0

" Colorscheme.
set termguicolors
set background=dark
let g:sonokai_better_performance=1
let g:sonokai_transparent_background=1
let g:sonokai_style='shusia'
colorscheme sonokai

" Mappings.
let mapleader=','

""Telescope.
nnoremap <leader>f <cmd>Telescope find_files<CR>
nnoremap <leader>g <cmd>Telescope live_grep<CR>
nnoremap <leader>b <cmd>Telescope buffers<CR>
nnoremap <leader>h <cmd>Telescope help_tags<CR>
