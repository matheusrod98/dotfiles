local setup, saga = pcall(require, "lspsaga")
if not setup then
	return
end

saga.setup({
	ui = {
		theme = "round",
		border = "rounded",
	},
	finder = {
		edit = { "o", "<CR>" },
		vsplit = "v",
		split = "s",
		tabe = "t",
		quit = { "q", "<ESC>" },
	},
	definition = {
		edit = "<CR>",
		vsplit = "<C-o>v",
		split = "<C-o>s",
		tabe = "<C-c>t",
		quit = "q",
		close = "<Esc>",
	},
})

vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })
vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>e", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
vim.keymap.set("n", "<leader>e", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
vim.keymap.set("n", "[E", function()
	require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
vim.keymap.set("n", "]E", function()
	require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
vim.keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", { silent = true })
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
vim.keymap.set("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
vim.keymap.set("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })
