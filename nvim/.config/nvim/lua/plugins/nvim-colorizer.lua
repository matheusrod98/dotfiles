return {
    "NvChad/nvim-colorizer.lua",
    config = function()
        require("colorizer").setup {
            filetypes = { "*" },
            user_default_options = {
                mode = "background", -- Set the display mode.
                tailwind = false, -- Enable tailwind colors
                sass = { enable = false, parsers = { "css" }, }, -- Enable sass colors
                always_update = true
            },
        }
    end
}
