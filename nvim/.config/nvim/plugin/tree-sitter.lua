local setup, treesitter = pcall(require, "nvim-treesitter.configs")
if not setup then
	return
end

vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = { enable = true },
	autotag = {
        enable = true,
        enable_close_on_slash = false
    },
	ensure_installed = "all",
	auto_install = true,
})
