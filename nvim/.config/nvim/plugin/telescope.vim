" Config.
lua << EOF
local telescope = require('telescope')
telescope.setup{
    defaults = {
        file_ignore_patterns = {"^.git/"}
    },
    pickers = {
        find_files = {
            hidden = true
        }
    }
}
EOF

" Mappings.
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>lg <cmd>Telescope live_grep<CR>
nnoremap <leader>lb <cmd>Telescope buffers<CR>
nnoremap <leader>ht <cmd>Telescope help_tags<CR>
