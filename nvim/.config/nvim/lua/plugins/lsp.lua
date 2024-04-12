return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")

		require("lspconfig.ui.windows").default_options.border = "rounded"

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		lspconfig.cssls.setup({
			capabilities = capabilities,
		})
		lspconfig.html.setup({
			capabilities = capabilities,
		})
		lspconfig.jsonls.setup({
			capabilities = capabilities,
		})
		lspconfig.pyright.setup({})
		lspconfig.clangd.setup({})
		lspconfig.tsserver.setup({})
		lspconfig.gopls.setup({})
		lspconfig.lua_ls.setup({
			settings = { Lua = { diagnostics = { globals = { "vim" } } } },
		})
		lspconfig.tailwindcss.setup({})
		lspconfig.docker_compose_language_service.setup({})
		lspconfig.dockerls.setup({})
		lspconfig.marksman.setup({})
		lspconfig.yamlls.setup({
			yaml = {
				schemaStore = {
					enable = true,
				},
			},
		})
		lspconfig.autotools_ls.setup({})
		lspconfig.texlab.setup({})
		lspconfig.bashls.setup({
			filetypes = { "sh", "bash" },
			cmd = { "bash-language-server", "start" },
		})

		vim.diagnostic.config({
			virtual_text = false,
			signs = true,
			update_in_insert = false,
			float = { border = "rounded" },
		})

		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
			border = "rounded",
		})

		local signs = { Error = "", Warn = "", Hint = "", Info = "" }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
		end
	end,
}
