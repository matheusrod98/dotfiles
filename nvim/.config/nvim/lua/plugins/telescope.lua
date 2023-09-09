return {
	"nvim-telescope/telescope.nvim", tag = "0.1.2",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
	},
	config = function()
		require("telescope").setup({
			defaults = {
				file_ignore_patterns = { "^.git/", "node_modules", "%.svg" },
			},
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				}
			}
		})

		require('telescope').load_extension('fzf')
	end
}

