local setup, rosepine = pcall(require, "rose-pine")
if not setup then
	return
end

require('rose-pine').setup({
	variant = 'auto',
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = true,
	disable_float_background = true,
	disable_italics = false,
})

vim.cmd('colorscheme rose-pine')
