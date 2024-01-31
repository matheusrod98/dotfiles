return {
    "loctvl842/monokai-pro.nvim",
    config = function()
        require("monokai-pro").setup({
            filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
        })
    end
}
