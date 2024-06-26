return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			sync_install = true,
			auto_install = true,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
