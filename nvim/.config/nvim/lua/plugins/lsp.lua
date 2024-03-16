return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")

		require("lspconfig.ui.windows").default_options.border = "rounded"

		lspconfig.pyright.setup({})
		lspconfig.clangd.setup({})
		lspconfig.tsserver.setup({})
		lspconfig.gopls.setup({})
		lspconfig.tailwindcss.setup({})
		lspconfig.lua_ls.setup({
			settings = { Lua = { diagnostics = { globals = { "vim" } } } },
		})
		lspconfig.docker_compose_language_service.setup({})
		lspconfig.dockerls.setup({})
		lspconfig.marksman.setup({})
		lspconfig.yamlls.setup({})

		vim.diagnostic.config({
			virtual_text = false,
			signs = true,
			update_in_insert = false,
			float = { border = "rounded" },
		})

		local signs = { Error = "", Warn = "", Hint = "", Info = "" }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
		end
	end,
}
