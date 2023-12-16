return {
    "mfussenegger/nvim-lint",
    config = function() 
        require("lint").linters.eslint.cmd = "eslint"
        require("lint").linters_by_ft = {
            typescript = { "eslint" },
            javascript = { "eslint" },
            -- python = { "ruff" },
            cpp = { "cppcheck" },
        }

        vim.api.nvim_create_autocmd({ 
            "BufEnter",
            "TextChanged",
            "InsertLeave",
            "BufWritePost",
            "TextChangedI"
        }, {
                callback = function()
                    require("lint").try_lint()
                end,
            })
    end
}
