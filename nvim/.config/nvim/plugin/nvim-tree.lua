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
	disable_netrw = false,
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
		cmd = "distrobox-host-exec gio trash",
		require_confirm = true,
	},
})

-- vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])

-- Mappings
vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })
