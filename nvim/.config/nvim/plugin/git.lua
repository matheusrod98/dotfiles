-- Git signs.
require('gitsigns').setup {
    current_line_blame = true
}

-- Fugitive like git wrapper.
require('git').setup {
    keymaps = {
        browse = "<leader>g"
    }
}
