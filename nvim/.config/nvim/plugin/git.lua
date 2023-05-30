local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	return
end

gitsigns.setup({
	current_line_blame = true,
})

-- Opens Fugitive
vim.keymap.set("n", "<leader>g", ":Git<CR>")
vim.keymap.set("n", "<leader>g", ":terminal lazygit<CR>")
