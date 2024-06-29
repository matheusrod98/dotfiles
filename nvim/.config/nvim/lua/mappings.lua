-- Telescope
vim.keymap.set("n", "<leader>p", "<CMD>Telescope find_files<CR>", { silent = true })
vim.keymap.set("n", "<leader>l", "<CMD>Telescope live_grep<CR>", { silent = true })
vim.keymap.set("n", "<leader>b", "<CMD>Telescope buffers<CR>", { silent = true })
vim.keymap.set("n", "<leader>ht", "<CMD>Telescope help_tags<CR>", { silent = true })
vim.keymap.set("n", "<leader>mp", "<CMD>Telescope man_pages<CR>", { silent = true })

-- LSP
vim.keymap.set("n", "K", "<CMD>Lspsaga hover_doc<CR>", { silent = true })
vim.keymap.set("n", "gd", "<CMD>Lspsaga peek_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>ca", "<CMD>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "]e", function()
	require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
vim.keymap.set("n", "[e", function()
	require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
vim.keymap.set("n", "]w", function()
	require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.WARNING })
end, { silent = true })
vim.keymap.set("n", "[w", function()
	require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.WARNING })
end, { silent = true })
vim.keymap.set("n", "]h", function()
	require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.HINT })
end, { silent = true })
vim.keymap.set("n", "[h", function()
	require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.HINT })
end, { silent = true })
vim.keymap.set("n", "]i", function()
	require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.INFO })
end, { silent = true })
vim.keymap.set("n", "[i", function()
	require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.INFO })
end, { silent = true })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
vim.keymap.set("n", "gD", "<CMD> Lspsaga peek_type_definition<CR>", { silent = true })
vim.keymap.set("n", "gr", "<CMD>Telescope lsp_references<CR>", { silent = true })
vim.keymap.set("n", "gi", "<CMD>Telescope lsp_implementations<CR>", { silent = true })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>ic", "<CMD>Telescope lsp_incoming_calls<CR>", { silent = true })
vim.keymap.set("n", "<leader>oc", "<CMD>Telescope lsp_outgoing_calls<CR>", { silent = true })
vim.keymap.set("n", "<leader>wd", "<CMD>Telescope diagnostics<CR>", { silent = true })

-- Git
vim.keymap.set("n", "<leader>gs", "<CMD>Neogit<CR>", { silent = true })
vim.keymap.set("n", "[c", "<CMD>Gitsigns prev_hunk<CR>", { silent = true })
vim.keymap.set("n", "]c", "<CMD>Gitsigns next_hunk<CR>", { silent = true })
vim.keymap.set("n", "<leader>s", "<CMD>Gitsigns stage_hunk<CR>", { silent = true })
vim.keymap.set("n", "<leader>S", "<CMD>Gitsigns undo_stage_hunk<CR>", { silent = true })
vim.keymap.set("n", "<leader>gp", "<CMD>Gitsigns preview_hunk<CR>", { silent = true })

-- Buffers
vim.keymap.set("n", "]b", "<CMD>bnext<CR>", { silent = true })
vim.keymap.set("n", "[b", "<CMD>bprevious<CR>", { silent = true })

-- Windows
vim.keymap.set("n", "<leader>wx", "<CMD>split<CR>", { silent = true })
vim.keymap.set("n", "<leader>wv", "<CMD>vsplit<CR>", { silent = true })
vim.keymap.set("n", "<leader>wh", "<CMD>wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<leader>wj", "<CMD>wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<leader>wk", "<CMD>wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<leader>wl", "<CMD>wincmd l<CR>", { silent = true })
vim.keymap.set("n", "<leader>wo", "<CMD>only<CR>", { silent = true })
vim.keymap.set("n", "<leader>wt", "<CMD>resize +3<CR>", { silent = true })
vim.keymap.set("n", "<leader>ws", "<CMD>resize -3<CR>", { silent = true })
vim.keymap.set("n", "<leader>ww", "<CMD>vertical resize +3<CR>", { silent = true })
vim.keymap.set("n", "<leader>wn", "<CMD>vertical resize -3<CR>", { silent = true })
vim.keymap.set("n", "<leader>wq", "<CMD>q<CR>", { silent = true })

-- Tabs
vim.keymap.set("n", "[t", "<CMD>tabNext<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "]t", "<CMD>tabprevious<CR>", { silent = true, noremap = true })

-- Quickfix list.
vim.keymap.set("n", "]q", "<CMD>cnext<CR>", { silent = true })
vim.keymap.set("n", "[q", "<CMD>cprev<CR>", { silent = true })
vim.keymap.set("n", "<leader>q", function()
	local windows = vim.fn.getwininfo()
	for _, win in pairs(windows) do
		if win["quickfix"] == 1 then
			vim.cmd.cclose()
			return
		end
	end
	vim.cmd.copen()
end)

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Undotree
vim.keymap.set("n", "<leader>u", "<CMD>UndotreeToggle | UndotreeFocus<CR>", { silent = true })

-- Others
-- vim.keymap.set("n", "<C-c>", "<CMD>noh<CR>", { silent = true })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>c", "<CMD>Noice dismiss<CR>", { silent = true })

-- TODO
-- vim.keymap.set("n", "]t", function()
-- 	require("todo-comments").jump_next()
-- end)
--
-- vim.keymap.set("n", "[t", function()
-- 	require("todo-comments").jump_prev()
-- end)
