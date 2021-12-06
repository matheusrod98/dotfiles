lua << EOF
require("bufferline").setup{}
EOF

" Mappings.
nnoremap <silent>cb :bdelete<CR>
nnoremap <silent>gb :BufferLinePick<CR>
nnoremap <silent>db :BufferLinePickClose<CR>
nnoremap <silent>b[ :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>
