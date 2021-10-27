" Linter settings.
compiler pylint
nnoremap <C-l> :silent make % <CR><CR>

" Format based on PEP8 before write to the file.
if executable ('black')
    setlocal formatprg='black'
    setlocal formatexpr=
endif

" Damn you PEP8.
set colorcolumn=80
