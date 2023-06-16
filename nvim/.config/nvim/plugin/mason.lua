local mason_setup, mason = pcall(require, "mason")
if not mason_setup then
	return
end

local lsp_setup, lspconfig = pcall(require, "lspconfig")
if not lsp_setup then
	return
end

local mason_setup, mason_lsp_integration = pcall(require, "mason-lspconfig")
if not mason_setup then
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
		"tsserver",
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
        eslint_d,
	pylint,
	cpplint,
	prettierd,
	autopep8,
	cfn_lint
    },
    automatic_installation = true,
    automatic_setup = true,
})

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.diagnostics.pylint,
        null_ls.builtins.diagnostics.cpplint,
        null_ls.builtins.diagnostics.cfn_lint,
        null_ls.builtins.formatting.eslint_d,
        null_ls.builtins.formatting.pyling,
        null_ls.builtins.formatting.cpplint,
        null_ls.builtins.code_actions.eslint_d,
        null_ls.builtins.code_actions.gitsigns
    },
    
    on_attach = function(client, bufnr)
        lsp_format_modifications.attach(client, bufnr, { format_on_save = false })
    end
})

mason_null_ls.setup({
	automatic_setup = true
})
