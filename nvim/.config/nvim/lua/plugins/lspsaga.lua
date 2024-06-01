return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("lspsaga").setup({
			ui = {
				theme = "round",
				border = "rounded",
			},
			lightbulb = {
				enable = false,
				enable_in_insert = false,
			},
			definition = {
				keys = {
					edit = "o",
					split = "s",
					vsplit = "v",
					tabe = "t",
				},
			},
		})
	end,
}
