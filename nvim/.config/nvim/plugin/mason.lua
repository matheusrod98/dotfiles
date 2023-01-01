local mason_setup, mason = pcall(require, "mason")
if not mason_setup then
	return
end

local mason_lspconfig_setup, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_setup then
	return
end

local mason_null_ls_setup, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_setup then
	return
end

local lspconfig = require("lspconfig")
mason.setup({
	ui = {
		border = "single",
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

mason_lspconfig.setup({
	ensure_installed = {
		"bashls",
		"clangd",
		"cmake",
		"dockerls",
		"sumneko_lua",
		"pyright",
		"angularls",
		"tsserver",
		"html",
		"cssls",
		"marksman",
		"texlab",
	},
	automatic_installation = true,
})

mason_lspconfig.setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({
			on_attach = on_attach,
			flags = lsp_flags,
		})
	end,

	["bashls"] = function()
		lspconfig.bashls.setup({
			filetypes = { "zsh", "sh" },
		})
	end,
	["sumneko_lua"] = function()
		lspconfig.sumneko_lua.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
	end,
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
	},
	automatic_installation = false,
	automatic_setup = false,
})
