return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "auto",
            background = {light = "latte", dark = "mocha"},
            transparent_background = false,
            term_colors = true,
            dim_inactive = {enabled = true, shade = "dark", percentage = 0.15},
            color_overrides = {},
            custom_highlights = {},
            default_integrations = true
        })
    end
}
