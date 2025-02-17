return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        require("gruvbox").setup({
            palette_overrides = {dark0_hard = "#161616"},
            overrides = {Pmenu = {bg = "#292828"}},
            dim_inactive = false,
            transparent_mode = true,
            contrast = "hard"
        })
        vim.cmd("colorscheme gruvbox")
    end
}
