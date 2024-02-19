return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require('lspconfig')
        require("lspconfig.ui.windows").default_options.border = "rounded"

        lspconfig.pyright.setup {}
        lspconfig.tsserver.setup {}
        lspconfig.tailwindcss.setup{}
        lspconfig.clangd.setup {}
        lspconfig.gopls.setup {}

        vim.o.completeopt = "menu,menuone,noselect"

        vim.diagnostic.config({
            virtual_text = false,
            signs = true,
            update_in_insert = false,
        })

        local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end

    end
}
