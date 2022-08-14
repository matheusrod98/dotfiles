-- Git status.
vim.api.nvim_set_keymap('n', '<leader>g', ':G<CR>', {noremap = true, silent = false})

-- Git signs.
require('gitsigns').setup {
    current_line_blame = true
}
