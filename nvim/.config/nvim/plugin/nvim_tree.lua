require("nvim-tree").setup {
	disable_netrw = true,
	view = {
		width = 30,
		height = 30,
	},
	renderer = {
		indent_markers = {
			enable = true,
		},
		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = false,
				git = true,
			},
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
	},
}

-- Toggle tree
vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
