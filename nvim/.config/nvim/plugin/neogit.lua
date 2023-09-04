local setup = pcall(require, "neogit")
if not setup then
    return
end

vim.keymap.set("n", "<leader>g", ":Neogit<CR>")
