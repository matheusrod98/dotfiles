return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({ 
			options = {
				theme = "base16",
			},
		})
		vim.go.showmode = false
	end,
}
