lua << EOF
require("bufferline").setup{}
EOF

" Mappings.
nnoremap <silent><space>d :bdelete<CR>
nnoremap <silent><space>  :BufferLinePick<CR>
nnoremap <silent><space>c :BufferLinePickClose<CR>
nnoremap <silent><space>[ :BufferLineCycleNext<CR>
nnoremap <silent><space>] :BufferLineCyclePrev<CR>
