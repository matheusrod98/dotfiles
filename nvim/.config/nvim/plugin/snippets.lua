local setup = pcall(require, "luasnip")
if not setup then
	return
end

require("luasnip.loaders.from_vscode").lazy_load()
