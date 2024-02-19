return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                globalstatus = true,
            }
        })

        vim.go.showmode = false

    end
}
