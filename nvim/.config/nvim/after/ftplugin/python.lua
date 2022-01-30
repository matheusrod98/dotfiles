-- Damn you PEP8.
vim.bo.sw = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.wo.colorcolumn = "80"
vim.api.nvim_command([[autocmd BufWritePre * :YAPF]])
