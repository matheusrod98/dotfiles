return {
	"nvim-treesitter/nvim-treesitter", run = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			sync_install = true,
			auto_install = true,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			}
		})
	end
}