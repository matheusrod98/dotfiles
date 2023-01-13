require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	background = {
		light = "latte",
		dark = "mocha",
	},
	transparent_background = true,
	term_colors = true,
})

vim.cmd.colorscheme("catppuccin")
