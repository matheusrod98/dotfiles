return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("trouble").setup({
            height = 10,
            width = 50,
            mode = "workspace_diagnostics",
            action_keys = {
                close = "q",
                cancel = "<esc>",
                refresh = "r",
                jump = { "<cr>", "<tab>", "<2-leftmouse>" },
                open_split = { "<c-x>" },
                open_vsplit = { "<c-v>" },
                open_tab = { "<c-t>" },
                jump_close = {"o"},
                toggle_mode = "m",
                switch_severity = "s",
                toggle_preview = "P",
                hover = "K",
                preview = "p",
                open_code_href = "c",
                close_folds = {"zM", "zm"},
                open_folds = {"zR", "zr"},
                toggle_fold = {"zA", "za"},
                previous = "k",
                next = "j",
                help = "?",
            },
            signs = {
                error = "",
                warning = "",
                hint = "",
                information = "",
                other = "",
            },
            use_diagnostic_signs = false
        })
    end,
}
