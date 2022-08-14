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
        require("lspconfig")[server_name].setup {}
    end,
    ["bashls"] = function ()
        lspconfig.bashls.setup {
            filetypes = {"zsh", "sh"}
        }
    end
})

require("mason-lspconfig").setup()
