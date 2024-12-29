return {
    "L3MON4D3/LuaSnip",
    version = "*",
    build = "make install_jsregexp",
    dependencies = {"rafamadriz/friendly-snippets"},
    config = function()
        require("luasnip.loaders.from_vscode").load_standalone({
            path = vim.fn.getcwd() .. "/.vscode/snippets.code-snippets",
            lazy = true
        })
    end
}
