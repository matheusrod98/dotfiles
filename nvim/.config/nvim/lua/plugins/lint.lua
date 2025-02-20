return {
    "mfussenegger/nvim-lint",
    config = function()
        require("lint").linters_by_ft = {
            typescript = {"eslint"},
            javascript = {"eslint"},
            typescriptreact = {"eslint"},
            javascriptreact = {"eslint"},
            sh = {"shellcheck"},
            make = {"checkmake"},
            cpp = {"cppcheck"},
            c = {"cppcheck"},
            dockerfile = {"hadolint"},
            tex = {"chktex"},
            python = {"ruff"},
            -- go = {"revive"},
            lua = {"luacheck"}
        }

        local lint_augroup = vim.api.nvim_create_augroup('lint', {clear = true})
        vim.api.nvim_create_autocmd({'BufEnter', 'BufWritePost', 'InsertLeave'},
                                    {
            group = lint_augroup,
            callback = function()
                if vim.opt_local.modifiable:get() then
                    require("lint").try_lint()
                end
            end
        })
    end
}
