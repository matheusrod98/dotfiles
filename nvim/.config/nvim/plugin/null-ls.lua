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
        -- formatting.prettier,
        diagnostics.eslint_d,
        -- Python
        diagnostics.pylint,
        -- formatting.autopep8,
        -- C & CPP
        diagnostics.cpplint,
        -- formatting.clang_format,
        -- Lua
        -- formatting.stylua,
        -- Shell
        diagnostics.shellcheck,
        -- MARKDOWN
        diagnostics.markdownlint,
        -- AWS
        diagnostics.cfn_lint,
        -- Docker
        diagnostics.hadolint,
	-- JSON
	diagnostics.jsonlint
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
