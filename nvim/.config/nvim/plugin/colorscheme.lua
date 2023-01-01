local setup, kanagawa = pcall(require, "kanagawa")
if not setup then
	return
end

kanagawa.setup({
	transparent = true,
	theme = "default",
})
vim.cmd("colorscheme kanagawa")
