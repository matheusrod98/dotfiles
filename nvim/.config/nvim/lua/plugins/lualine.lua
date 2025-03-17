return {
    "nvim-lualine/lualine.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        require('lualine').setup {
            options = {globalstatus = true},
            sections = {lualine_x = {"overseer"}}
        }
        vim.go.showmode = false
        vim.opt.laststatus = 3
    end
}
