return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-telescope/telescope-fzf-native.nvim", build = "make"}
    },
    config = function()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = {"^.git/", "node_modules"},
                mappings = {
                    i = {
                        ["<c-v>"] = require("telescope.actions").select_vertical,
                        ["<c-x>"] = require("telescope.actions").select_horizontal
                    }
                }
            },
            pickers = {find_files = {hidden = true}},
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case"
                }
            }
        })
        require("telescope").load_extension("fzf")
    end
}
