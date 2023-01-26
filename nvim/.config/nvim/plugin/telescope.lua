local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

telescope.setup({
	defaults = {
		file_ignore_patterns = { "^.git/", "node_modules" },
	},
})
-- telescope.load_extension("fzf")
telescope.load_extension("file_browser")

-- Mappings.
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>lg", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>b", "<cmd>Telescope buffers<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>ht", "<cmd>Telescope help_tags<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<CR>", { noremap = true, silent = false })
