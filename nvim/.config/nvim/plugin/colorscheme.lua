require("tokyonight").setup({
	style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	light_style = "day",
	day_brightness = 0.3,
	hide_inactive_statusline = false,
	dim_inactive = true,
	lualine_bold = true,
})
vim.cmd("colorscheme tokyonight")
