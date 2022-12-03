require('telescope').setup{
    extensions = {
        file_browser = {
            hijack_netrw = true,
        }
    },
	defaults = {
		file_ignore_patterns = {"^.git/"}
	},
}
require('telescope').load_extension('fzf')

-- Mappings.
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>lg', '<cmd>Telescope live_grep<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>b', '<cmd>Telescope buffers<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>ht', '<cmd>Telescope help_tags<CR>', {noremap = true, silent = false})
