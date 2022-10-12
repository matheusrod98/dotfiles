local lspconfig = require("lspconfig")
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup_handlers({
    function (server_name)
        require("lspconfig")[server_name].setup {
            on_attach = on_attach,
            flags = lsp_flags,
        }
    end,
    ["bashls"] = function ()
        lspconfig.bashls.setup {
            filetypes = {"zsh", "sh"}
        }
    end
})
