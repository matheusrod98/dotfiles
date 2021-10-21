" Linter settings.
compiler pylint
nnoremap <C-l> :silent make % <CR><CR>

" Auto format based on PEP8 before write to the file.
autocmd BufWritePre * :YAPF
