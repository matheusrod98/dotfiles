local lspconfig_setup, lspconfig = pcall(require, "lspconfig")
if not lspconfig_setup then
	return
end

require("lspconfig.ui.windows").default_options.border = "rounded"

vim.o.completeopt = "menu,menuone,noselect"

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	update_in_insert = false,
})

local signs = { Error = "", Warning = "", Hint = "", Information = "" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
