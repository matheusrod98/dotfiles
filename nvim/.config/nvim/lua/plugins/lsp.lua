return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require('lspconfig')
        require("lspconfig.ui.windows").default_options.border = "rounded"

        lspconfig.pyright.setup {}
        lspconfig.tsserver.setup {}

        vim.o.completeopt = "menu,menuone,noselect"

        vim.diagnostic.config({
            virtual_text = false,
            signs = true,
            update_in_insert = false,
        })
    end,
}
