return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
			default_integrations = true,
			integrations = {
				neotest = true,
				noice = true,
				which_key = true,
				telescope = {
					enabled = true,
					style = "nvchad",
				},
			},
			term_colors = true,
			dim_inactive = {
				enabled = true,
				shade = "dark",
				percentage = 0.4,
			},
			color_overrides = {
				mocha = {
					base = "#11111b",
					crust = "#1e1e2e",
				},
			},
		})
	end,
}
