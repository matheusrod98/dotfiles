local setup, devicons = pcall(require, "nvim-web-devicons")
if not setup then
	return
end

devicons.setup({
	default = true,
})
