-- Telescope
vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { silent = true })
vim.keymap.set("n", "<leader>rg", "<CMD>Telescope live_grep<CR>", { silent = true })
vim.keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>", { silent = true })
vim.keymap.set("n", "<leader>fh", "<CMD>Telescope help_tags<CR>", { silent = true })
vim.keymap.set("n", "<leader>fm", "<CMD>Telescope man_pages<CR>", { silent = true })

-- LSP
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", function()
	require("vim.diagnostic").goto_prev()
end)
vim.keymap.set("n", "]d", function()
	require("vim.diagnostic").goto_next()
end)
vim.keymap.set("n", "[e", function()
	require("vim.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end)
vim.keymap.set("n", "]e", function()
	require("vim.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end)
vim.keymap.set("n", "[w", function()
	require("vim.diagnostic").goto_prev({ severity = vim.diagnostic.severity.WARN })
end)
vim.keymap.set("n", "]w", function()
	require("vim.diagnostic").goto_next({ severity = vim.diagnostic.severity.WARN })
end)
vim.keymap.set("n", "[h", function()
	require("vim.diagnostic").goto_prev({ severity = vim.diagnostic.severity.HINT })
end)
vim.keymap.set("n", "]h", function()
	require("vim.diagnostic").goto_next({ severity = vim.diagnostic.severity.HINT })
end)
vim.keymap.set("n", "[i", function()
	require("vim.diagnostic").goto_prev({ severity = vim.diagnostic.severity.INFO })
end)
vim.keymap.set("n", "]i", function()
	require("vim.diagnostic").goto_next({ severity = vim.diagnostic.severity.INFO })
end)
vim.keymap.set("n", "gr", "<CMD>Telescope lsp_references<CR>", { silent = true })
vim.keymap.set("n", "gi", "<CMD>Telescope lsp_implementations<CR>", { silent = true })
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>ic", "<CMD>Telescope lsp_incoming_calls<CR>", { silent = true })
vim.keymap.set("n", "<leader>oc", "<CMD>Telescope lsp_outgoing_calls<CR>", { silent = true })
vim.keymap.set("n", "<leader>wd", "<CMD>Telescope diagnostics<CR>", { silent = true })

-- FuGITive
vim.keymap.set("n", "<leader>gs", "<CMD>Git<CR>", { silent = true })
vim.keymap.set("n", "<leader>gb", "<CMD>Git blame<CR>", { silent = true })
vim.keymap.set("n", "<leader>gc", "<CMD>Git commit<CR>", { silent = true })
vim.keymap.set("n", "<leader>gd", "<CMD>Git diff<CR>", { silent = true })
vim.keymap.set("n", "<leader>gl", "<CMD>Git log<CR>", { silent = true })
vim.keymap.set("n", "<leader>gp", "<CMD>Git push<CR>", { silent = true })
vim.keymap.set("n", "<leader>gr", "<CMD>Git rebase<CR>", { silent = true })
vim.keymap.set("n", "<leader>gw", "<CMD>Git write<CR>", { silent = true })
vim.keymap.set("n", "<leader>gt", "<CMD>diffget //2<CR>", { silent = true })
vim.keymap.set("n", "<leader>go", "<CMD>diffget //3<CR>", { silent = true })

-- Buffers
vim.keymap.set("n", "]b", "<CMD>bnext<CR>", { silent = true })
vim.keymap.set("n", "[b", "<CMD>bprevious<CR>", { silent = true })

-- Windows
vim.keymap.set("n", "<C-->", "<CMD>belowright split<CR>", { silent = true })
vim.keymap.set("n", "<C-=>", "<CMD>belowright vsplit<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<CMD>wincmd l<CR>", { silent = true })
vim.keymap.set("n", "<C-h>", "<CMD>wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<CMD>wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<CMD>wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<C-q>", "<CMD>q<CR>", { silent = true })
vim.keymap.set("n", "<C-a>", "<CMD>only<CR>", { silent = true })
vim.keymap.set("n", "<C-S-t>", "<CMD>resize +3<CR>", { silent = true })
vim.keymap.set("n", "<C-S-s>", "<CMD>resize -3<CR>", { silent = true })
vim.keymap.set("n", "<C-S-w>", "<CMD>vertical resize +3<CR>", { silent = true })
vim.keymap.set("n", "<C-S-n>", "<CMD>vertical resize -3<CR>", { silent = true })
vim.keymap.set("n", "<C-S-h>", "<CMD>wincmd H<CR>", { silent = true })
vim.keymap.set("n", "<C-S-j>", "<CMD>wincmd J<CR>", { silent = true })
vim.keymap.set("n", "<C-S-k>", "<CMD>wincmd K<CR>", { silent = true })
vim.keymap.set("n", "<C-S-l>", "<CMD>wincmd L<CR>", { silent = true })

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
vim.keymap.set("n", "<C-c>", "<CMD>noh<CR>", { silent = true })
