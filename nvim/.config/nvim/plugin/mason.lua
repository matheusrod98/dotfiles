local mason_setup, mason = pcall(require, "mason")
if not mason_setup then
	return
end

local lsp_setup, lspconfig = pcall(require, "lspconfig")
if not lsp_setup then
	return
end

local mason_lsp_integration_setup, mason_lsp_integration = pcall(require, "mason-lspconfig")
if not mason_lsp_integration_setup then
	return
end

local mason_null_ls_setup, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_setup then
	return
end

local null_ls_setup, null_ls = pcall(require, "null-ls")
if not null_ls_setup then
	return
end

local lsp_format_modifications_setup, lsp_format_modifications = pcall(require, "lsp-format-modifications")
if not lsp_format_modifications_setup then
	return
end

mason.setup({
	ui = {
		border = "rounded",
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

mason_lsp_integration.setup({
	ensure_installed = {
		"clangd",
		"pyright",
		"docker_compose_language_service",
		"dockerls",
		"angularls",
		"arduino_language_server",
		"cmake",
		"bashls",
	},
	automatic_installation = true,
})

mason_lsp_integration.setup_handlers({
	function(server_name)
		lspconfig[server_name].setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
			settings = settings,
		}
	end,

	["bashls"] = function()
		lspconfig.bashls.setup({
			filetypes = { "zsh", "sh" }
		})
	end
})

mason_null_ls.setup({
	ensure_installed = {
		"eslint_d",
		"prettierd",
		"cfn-lint",
		"shellcheck",
		"cmakelint"
	},
	automatic_installation = true,
	automatic_setup = true,
})

null_ls.setup({
	sources = {
		-- TypeScript
		null_ls.builtins.diagnostics.eslint_d,
		null_ls.builtins.formatting.prettierd,
		null_ls.builtins.code_actions.eslint_d,

		-- CloudFormation
		null_ls.builtins.diagnostics.cfn_lint,

		-- Shell
		null_ls.builtins.diagnostics.shellcheck,

		-- CMake
		-- null_ls.builtins.diagnostics.cmakelint,
	},
})
