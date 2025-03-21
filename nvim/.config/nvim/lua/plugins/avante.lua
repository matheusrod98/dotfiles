return {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = "*",
    dependencies = {
        "nvim-treesitter/nvim-treesitter", "stevearc/dressing.nvim",
        "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim",
        "nvim-telescope/telescope.nvim", "nvim-tree/nvim-web-devicons",
        "zbirenbaum/copilot.lua", {
            "HakonHarnes/img-clip.nvim",
            event = "VeryLazy",
            opts = {
                default = {
                    embed_image_as_base64 = false,
                    prompt_for_file_name = false,
                    drag_and_drop = {insert_mode = true},
                    use_absolute_path = true
                }
            }
        }, {
            'MeanderingProgrammer/render-markdown.nvim',
            opts = {file_types = {"markdown", "Avante"}},
            ft = {"markdown", "Avante"}
        }
    },
    opts = {
        ---@alias Provider "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot" | string
        provider = "claude",
        claude = {
            -- endpoint = "https://api.anthropic.com",
            model = "claude-3-7-sonnet-20250219"
            -- temperature = 0,
            -- max_tokens = 4096
        },
        behaviour = {
            auto_suggestions = false -- Experimental stage
        },
        mappings = {
            --- @class AvanteConflictMappings
            diff = {
                ours = "co",
                theirs = "ct",
                all_theirs = "ca",
                both = "cb",
                cursor = "cc",
                next = "]x",
                prev = "[x"
            },
            suggestion = {
                accept = "<M-l>",
                next = "<M-]>",
                prev = "<M-[>",
                dismiss = "<C-]>"
            },
            jump = {next = "]]", prev = "[["},
            submit = {normal = "<CR>", insert = "<C-s>"},
            sidebar = {
                apply_all = "A",
                apply_cursor = "a",
                retry_user_request = "r",
                edit_user_request = "e",
                switch_windows = "<Tab>",
                reverse_switch_windows = "<S-Tab>",
                remove_file = "d",
                add_file = "@",
                close = {"<Esc>", "q"},
                close_from_input = nil -- e.g., { normal = "<Esc>", insert = "<C-d>" }
            }
        },
        hints = {enabled = true},
        windows = {edit = {start_insert = false}, ask = {start_insert = false}}
    }
}
