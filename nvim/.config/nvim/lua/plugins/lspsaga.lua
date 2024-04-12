return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("lspsaga").setup({
			-- ui = {
			-- 	theme = "round",
			-- 	border = "rounded",
			-- },
			lightbulb = {
				enable = false,
				enable_in_insert = false,
			},
			-- finder = {
			-- 	keys = {
			-- 		vsplit = "v",
			-- 		split = "s",
			-- 	},
			-- },
			definition = {
				keys = {
					edit = "o",
					split = "s",
					vsplit = "v",
					tabe = "t",
				},
			},
			-- rename = {
			-- 	keys = {
			-- 		quit = "q",
			-- 		select = "s",
			-- 	},
			-- },
		})
	end,
}
