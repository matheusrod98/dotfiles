local setup, saga = pcall(require, "lspsaga")
if not setup then
    return
end

saga.setup({
    ui = {
        theme = "round",
        border = "rounded",
    },
    lightbulb = {
        enable = false,
        enable_in_insert = false,
    },
    finder = {
        keys = {
            vsplit = 'v',
            split = 's',
        }
    },
    definition = {
        keys = {
            edit = 'o',
            split = 's',
            vsplit = 'v',
            tabe = 't'
        }
    },
    rename = {
        keys = {
            quit = 'q',
            select = 's'
        }
    }
})

vim.keymap.set("n", "<C-l><C-f>", "<CMD>Lspsaga finder<CR>", { silent = true })
vim.keymap.set("n", "<C-l><C-i>", "<CMD>Lspsaga finder imp<CR>", { silent = true })
vim.keymap.set("n", "<C-l><C-r>", "<cmd>Lspsaga rename ++project<CR>", { silent = true })
vim.keymap.set("n", "<C-l><C-k>", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
vim.keymap.set("n", "<C-l><C-d>", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<C-l><C-a>", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "<C-l><C-e>", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
vim.keymap.set("n", "<C-l><C-e>", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })
vim.keymap.set("n", "<C-e><C-p>", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
vim.keymap.set("n", "<C-e><C-n>", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
vim.keymap.set("n", "<C-s-e><C-n>", function()
    require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
vim.keymap.set("n", "<C-s-e><C-p>", function()
    require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
