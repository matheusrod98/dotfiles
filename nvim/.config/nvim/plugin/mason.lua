local lspconfig = require("lspconfig")
require("mason").setup({
    ui = {
	border = "single",
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = {
        "bashls",
        "clangd",
        "cmake",
        "dockerls",
        "gopls",
        "sumneko_lua",
        "pyright",
        "vimls",
        "angularls",
        "tsserver",
        "html",
        "css",
    },
    automatic_installation = true,
})

require("mason-lspconfig").setup_handlers({
    function(server_name)
        require("lspconfig")[server_name].setup {
            on_attach = on_attach,
            flags = lsp_flags,
        }
    end,

    ["bashls"] = function ()
        lspconfig.bashls.setup {
            filetypes = { "zsh", "sh" }
        }
    end,
    ["sumneko_lua"] = function ()
        lspconfig.sumneko_lua.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    }
                }
            }
        }
    end,
})
