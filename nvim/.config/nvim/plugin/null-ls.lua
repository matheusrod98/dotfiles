local setup, null_ls = pcall(require, "null-ls")
if not setup then
    return
end

local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
    sources = {
        -- Typescript
        formatting.prettier,
        diagnostics.eslint_d,
        -- Python
        diagnostics.pylint,
        -- C & CPP
        diagnostics.cpplint,
        formatting.clang_format,
        -- Shell
        diagnostics.shellcheck
        -- Cmake
        -- ROS
        -- JSON
        -- YAML
        -- TOML
        -- MARKDOWN
        -- LATEX
        -- ORG

    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})
