return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"someone-stole-my-name/yaml-companion.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")
		require("telescope").load_extension("yaml_schema")

		require("lspconfig.ui.windows").default_options.border = "rounded"

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		lspconfig.cssls.setup({ capabilities = capabilities })
		lspconfig.html.setup({ capabilities = capabilities })
		lspconfig.jsonls.setup({ capabilities = capabilities })
		lspconfig.pyright.setup({})
		lspconfig.clangd.setup({})
		lspconfig.tsserver.setup({})
		lspconfig.gopls.setup({})
		lspconfig.tailwindcss.setup({})
		lspconfig.docker_compose_language_service.setup({})
		lspconfig.dockerls.setup({})
		lspconfig.autotools_ls.setup({})
		lspconfig.bashls.setup({
			filetypes = { "sh", "bash" },
			cmd = { "bash-language-server", "start" },
		})
		lspconfig.lua_ls.setup({
			settings = { Lua = { diagnostics = { globals = { "vim" } } } },
		})
		lspconfig.yamlls.setup({
			yaml = {
				schemaStore = {
					enable = true,
				},
			},
		})
		lspconfig.texlab.setup({})

		vim.diagnostic.config({
			virtual_text = false,
			update_in_insert = false,
			float = { border = "rounded" },
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = '󰅚 ',
					[vim.diagnostic.severity.WARN] = '󰀪 ',
					[vim.diagnostic.severity.INFO] = '󰋽 ',
					[vim.diagnostic.severity.HINT] = '󰌶 ',
				},
			},
		})

		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
			border = "rounded",
		})
	end,
}
