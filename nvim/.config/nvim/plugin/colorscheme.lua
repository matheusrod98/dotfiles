local setup, tokyonight = pcall(require, "tokyonight")
if not setup then
	return
end

tokyonight.setup({
	style = "night",
	light_style = "day",
	transparent = true,
	terminal_colors = true,
	hide_inactive_statusline = false,
	dim_inactive = false,
	lualine_bold = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "transparent",
		floats = "transparent",
	},
})

vim.cmd[[colorscheme tokyonight]]
