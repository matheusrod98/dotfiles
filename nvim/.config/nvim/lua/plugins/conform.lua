return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				scss = { "prettier" },
				json = { "prettier" },
				tex = { "latexindent" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = false,
			},
		})
	end,
}
