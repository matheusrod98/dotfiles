local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

telescope.setup({
	extensions = {
		file_browser = {
			hijack_netrw = true,
		},
	},
	defaults = {
		file_ignore_patterns = { "^.git/", "node_modules" },
	},
})
telescope.load_extension("fzf")
telescope.load_extension("file_browser")

-- Mappings.
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<leader>gf", "<cmd>Telescope git_files<CR>", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<leader>b", "<cmd>Telescope buffers<CR>", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<leader>ht", "<cmd>Telescope help_tags<CR>", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope file_browser<CR>", { noremap = true, silent = false })
