local setup, rose_pine = pcall(require, "rose-pine")
if not setup then
	return
end

rose_pine.setup({
	dark_variant = "main",
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = false,
	disable_float_background = false,
})
vim.cmd("colorscheme rose-pine")
