" Linter settings.
compiler pylint
nnoremap <leader>l :silent make % <CR><CR>

" Format based on PEP8.
if executable ('yapf')
    setlocal formatprg='yapf'
    setlocal formatexpr=
endif

nnoremap <leader>f :!yapf -i % <CR><CR>

" Damn you PEP8.
set colorcolumn=80
