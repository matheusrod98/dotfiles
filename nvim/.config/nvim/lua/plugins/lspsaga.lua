return {
    "nvimdev/lspsaga.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("lspsaga").setup({
            ui = {theme = "round", border = "rounded"},
            lightbulb = {enable = false, enable_in_insert = false},
            rename = {in_select = false},
            definition = {
                keys = {edit = "o", split = "s", vsplit = "v", tabe = "t"}
            },
            hover = {keys = {split = "<C-s>", vsplit = "<C-v>", tabe = "<C-t>"}}
        })
    end
}
