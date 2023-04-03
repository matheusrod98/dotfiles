local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

nvimtree.setup({
	renderer = {
		indent_markers = {
			enable = true,
		},
		icons = {
			show = {
				folder_arrow = false,
			},
		},
	},
	disable_netrw = true,
	hijack_netrw = true,
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
		debounce_delay = 50,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	trash = {
		cmd = "trash",
		require_confirm = true,
	},
})

local function open_nvim_tree(data)

	-- buffer is a directory
	local directory = vim.fn.isdirectory(data.file) == 1

	if not directory then
		return
	end

	-- change to the directory
	vim.cmd.cd(data.file)

	-- open the tree
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- Mappings
vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })
