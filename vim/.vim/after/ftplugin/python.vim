" Linter settings.
compiler pylint
nnoremap <leader>l :silent make % <bar> :redraw!<CR>

" Format based on PEP8.
if executable ('yapf')
    setlocal formatprg='yapf'
    setlocal formatexpr=
endif

nnoremap <leader>f :silent !yapf -i % <bar> :redraw!<CR>

" Damn you PEP8.
set colorcolumn=80
