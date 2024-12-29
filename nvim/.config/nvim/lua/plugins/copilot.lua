return {
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            {
                "zbirenbaum/copilot.lua",
                cmd = "Copilot",
                event = "InsertEnter",
                config = function()
                    require('copilot').setup({
                        panel = {enabled = false},
                        suggestion = {
                            enabled = false,
                            auto_trigger = true,
                            hide_during_completion = true,
                            debounce = 75,
                            keymap = {
                                accept = "<Tab>",
                                accept_word = false,
                                accept_line = false,
                                next = "<M-]>",
                                prev = "<M-[>",
                                dismiss = "<C-]>"
                            }
                        }
                    })
                end
            }, {"nvim-lua/plenary.nvim", branch = "master"}
        },
        build = "make tiktoken",
        config = function()
            require("CopilotChat").setup({
                model = 'gpt-4o', -- Default model to use, see ':CopilotChatModels' for available models (can be specified manually in prompt via $).
                agent = 'copilot', -- Default agent to use, see ':CopilotChatAgents' for available agents (can be specified manually in prompt via @).

                -- default prompts
                prompts = {
                    Explain = {
                        prompt = '> /COPILOT_EXPLAIN\n\nWrite an explanation for the selected code as paragraphs of text.'
                    },
                    Review = {
                        prompt = '> /COPILOT_REVIEW\n\nReview the selected code.'
                        -- see config.lua for implementation
                    },
                    Fix = {
                        prompt = '> /COPILOT_GENERATE\n\nThere is a problem in this code. Rewrite the code to show it with the bug fixed.'
                    },
                    Optimize = {
                        prompt = '> /COPILOT_GENERATE\n\nOptimize the selected code to improve performance and readability.'
                    },
                    Docs = {
                        prompt = '> /COPILOT_GENERATE\n\nPlease add documentation comments to the selected code.'
                    },
                    Tests = {
                        prompt = '> /COPILOT_GENERATE\n\nPlease generate tests for my code.'
                    },
                    Commit = {
                        prompt = '> #git:staged\n\nWrite commit message for the change with commitizen convention. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit.'
                    }
                },

                -- default mappings
                mappings = {
                    complete = {insert = '<Tab>'},
                    close = {normal = 'q', insert = '<C-c>'},
                    reset = {normal = '<C-l>', insert = '<C-l>'},
                    submit_prompt = {normal = '<CR>', insert = '<C-s>'},
                    toggle_sticky = {
                        detail = 'Makes line under cursor sticky or deletes sticky line.',
                        normal = 'gr'
                    },
                    accept_diff = {normal = '<C-y>', insert = '<C-y>'},
                    jump_to_diff = {normal = 'gj'},
                    quickfix_diffs = {normal = 'gq'},
                    yank_diff = {normal = 'gy', register = '"'},
                    show_diff = {normal = 'gd'},
                    show_info = {normal = 'gi'},
                    show_context = {normal = 'gc'},
                    show_help = {normal = 'gh'}
                }
            })
        end
    }
}
