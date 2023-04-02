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

	-- ["lua-language-server"] = function()
	-- 	lspconfig["lua-language-server"].setup({
	-- 		settings = {
	-- 			Lua = {
	-- 				diagnostics = {
	-- 					globals = { "vim" },
	-- 				},
	-- 			},
	-- 		},
	-- 	})
	-- end,
})

mason_lsp_integration.setup({
	ensure_installed = {
		"clangd",
		-- "lua-language-server",
		"pyright",
		"tsserver",
	},
	automatic_installation = true,
})


mason_null_ls.setup({
	ensure_installed = {
		"prettierd",
		"eslint_d",
		"pylint",
		"autopep8",
		"cpplint",
		"clang_format",
		"stylua",
		"shellcheck",
		"markdownlint",
		"cfn_lint",
		"hadolint",
		"jsonlint"
	},
	automatic_installation = false,
	automatic_setup = true,
})
