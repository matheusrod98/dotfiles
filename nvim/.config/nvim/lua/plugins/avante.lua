return {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    dependencies = {
        "nvim-treesitter/nvim-treesitter", "stevearc/dressing.nvim",
        "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim",
        "nvim-telescope/telescope.nvim", "nvim-tree/nvim-web-devicons", {
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
        system_prompt = function()
            local hub = require("mcphub").get_hub_instance()
            return hub:get_active_servers_prompt()
        end,
        custom_tools = function()
            return {require("mcphub.extensions.avante").mcp_tool()}
        end,
        disabled_tools = {
            "list_files", -- Built-in file operations
            "search_files", "read_file", "create_file", "rename_file",
            "delete_file", "create_dir", "rename_dir", "delete_dir", "bash" -- Built-in terminal access
        },
        ---@alias Provider "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot" | string
        provider = "claude",
        cursor_applying_provider = 'groq',
        claude = {
            -- endpoint = "https://api.anthropic.com",
            model = "claude-3-7-sonnet-20250219"
            -- temperature = 0,
            -- max_tokens = 4096
        },
        vendors = {
            groq = {
                __inherited_from = 'openai',
                api_key_name = 'GROQ_API_KEY',
                endpoint = 'https://api.groq.com/openai/v1/',
                model = 'llama-3.3-70b-versatile',
                max_completion_tokens = 32768 -- remember to increase this value, otherwise it will stop generating halfway
            }
        },
        behaviour = {
            auto_suggestions = false, -- Experimental stage
            enable_cursor_planning_mode = true
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
