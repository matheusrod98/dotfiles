local setup, rosepine = pcall(require, "rose-pine")
if not setup then
	return
end

rosepine.setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = 'auto',
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = true,
	disable_background = false,
	disable_float_background = false,
})

vim.cmd('colorscheme rose-pine')
