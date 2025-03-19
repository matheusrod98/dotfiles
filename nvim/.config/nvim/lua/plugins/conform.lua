return {
    "stevearc/conform.nvim",
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                cpp = {"clang-format"},
                c = {"clang-format"},
                tex = {"latexindent"},
                python = {"ruff"},
                go = {"gofmt", "goimports"},
                lua = {"lua-format"},
                yaml = {"prettier"},
                markdown = {"prettier"},
                html = {"prettier"},
                css = {"prettier"},
                scss = {"prettier"},
                json = {"prettier"},
                graphql = {"prettier"},
                nix = {"nixfmt"}
                -- javascript = {"prettier"},
                -- typescript = {"prettier"},
                -- javascriptreact = {"prettier"},
                -- typescriptreact = {"prettier"}
            },
            format_on_save = {timeout_ms = 500, lsp_fallback = false}
        })
    end
}
