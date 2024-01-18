return {
    'stevearc/conform.nvim',
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                python = { "black" },
                -- javascript = { "prettier" },
                -- typescript = { "prettier" },
                -- typescriptreact = { "prettier" },
                -- javascriptreact = { "prettier" },
            },
            format_on_save = {
                lsp_fallback = false,
                timeout_ms = 500,
            },
        })
    end
}
