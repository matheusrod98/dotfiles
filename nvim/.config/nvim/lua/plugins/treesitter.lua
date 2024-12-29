return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "markdown", "markdown_inline", "gowork", "sql", "gotmpl",
                "comment", "gomod", "gosum", "latex", "html", "cpp", "go",
                "json", "tsx", "css", "diff"
            },
            sync_install = true,
            auto_install = true,
            highlight = {enable = true},
            indent = {enable = true}
        })
    end
}
