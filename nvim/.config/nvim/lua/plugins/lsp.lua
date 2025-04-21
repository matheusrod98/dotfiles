return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {'saghen/blink.cmp'}, {"j-hui/fidget.nvim", opts = {}},
        "b0o/SchemaStore.nvim", {
            "folke/lazydev.nvim",
            ft = "lua",
            opts = {
                library = {{path = "${3rd}/luv/library", words = {"vim%.uv"}}}
            }
        }
    },
    config = function()
        vim.diagnostic.config {
            float = {border = "rounded"},
            virtual_text = false,
            underline = true
        }
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        if pcall(require, "blink.cmp") then
            capabilities = require('blink.cmp').get_lsp_capabilities()
        end
        if pcall(require, "ufo") then
            capabilities.textDocument.foldingRange = {
                dynamicRegistration = false,
                lineFoldingOnly = true
            }
        end
        require('lspconfig').nixd.setup({})
        require("lspconfig").cssls.setup({capabilities = capabilities})
        require("lspconfig").html.setup({capabilities = capabilities})
        require("lspconfig").jsonls.setup({
            capabilities = capabilities,
            settings = {
                json = {
                    schemas = require("schemastore").json.schemas(),
                    validate = {enable = true}
                }
            }
        })
        require("lspconfig").yamlls.setup({
            settings = {
                yaml = {
                    schemaStore = {enable = false, url = ""},
                    schemas = require("schemastore").yaml.schemas()
                }
            }
        })
        require("lspconfig").ts_ls.setup {
            capabilities = capabilities,
            settings = {
                typescript = {
                    inlayHints = {
                        includeInlayParameterNameHints = "all",
                        includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                        includeInlayFunctionParameterTypeHints = true,
                        includeInlayVariableTypeHints = true,
                        includeInlayVariableTypeHintsWhenTypeMatchesName = true,
                        includeInlayPropertyDeclarationTypeHints = true,
                        includeInlayFunctionLikeReturnTypeHints = true,
                        includeInlayEnumMemberValueHints = true
                    }
                },
                javascript = {
                    inlayHints = {
                        includeInlayParameterNameHints = "all",
                        includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                        includeInlayFunctionParameterTypeHints = true,
                        includeInlayVariableTypeHints = true,
                        includeInlayVariableTypeHintsWhenTypeMatchesName = true,
                        includeInlayPropertyDeclarationTypeHints = true,
                        includeInlayFunctionLikeReturnTypeHints = true,
                        includeInlayEnumMemberValueHints = true
                    }
                }
            }
        }
        require("lspconfig").basedpyright.setup({
            capabilities = capabilities,
            settings = {
                basedpyright = {
                    analysis = {
                        autoSearchPaths = true,
                        diagnosticMode = "openFilesOnly",
                        useLibraryCodeForTypes = true
                    }
                }
            }
        })
        require("lspconfig").clangd.setup {
            capabilities = capabilities,
            settings = {
                clangd = {
                    InlayHints = {
                        Designators = true,
                        Enabled = true,
                        ParameterNames = true,
                        DeducedTypes = true
                    },
                    fallbackFlags = {"-std=c++20"}
                }
            }
        }
        require("lspconfig").omnisharp.setup {
            capabilities = capabilities,
            cmd = {"dotnet", "/path/to/omnisharp/OmniSharp.dll"},
            settings = {
                FormattingOptions = {
                    -- Enables support for reading code style, naming convention and analyzer
                    -- settings from .editorconfig.
                    EnableEditorConfigSupport = true,
                    -- Specifies whether 'using' directives should be grouped and sorted during
                    -- document formatting.
                    OrganizeImports = nil
                },
                MsBuild = {
                    -- If true, MSBuild project system will only load projects for files that
                    -- were opened in the editor. This setting is useful for big C# codebases
                    -- and allows for faster initialization of code navigation features only
                    -- for projects that are relevant to code that is being edited. With this
                    -- setting enabled OmniSharp may load fewer projects and may thus display
                    -- incomplete reference lists for symbols.
                    LoadProjectsOnDemand = nil
                },
                RoslynExtensionsOptions = {
                    InlayHintsOptions = {
                        EnableForParameters = true,
                        ForLiteralParameters = true,
                        ForIndexerParameters = true,
                        ForObjectCreationParameters = true,
                        ForOtherParameters = true,
                        SuppressForParametersThatDifferOnlyBySuffix = false,
                        SuppressForParametersThatMatchMethodIntent = false,
                        SuppressForParametersThatMatchArgumentName = false,
                        EnableForTypes = true,
                        ForImplicitVariableTypes = true,
                        ForLambdaParameterTypes = true,
                        ForImplicitObjectCreatio = true
                    },
                    -- Enables support for roslyn analyzers, code fixes and rulesets.
                    EnableAnalyzersSupport = nil,
                    -- Enables support for showing unimported types and unimported extension
                    -- methods in completion lists. When committed, the appropriate using
                    -- directive will be added at the top of the current file. This option can
                    -- have a negative impact on initial completion responsiveness,
                    -- particularly for the first few completion sessions after opening a
                    -- solution.
                    EnableImportCompletion = nil,
                    -- Only run analyzers against open files when 'enableRoslynAnalyzers' is
                    -- true
                    AnalyzeOpenDocumentsOnly = nil
                },
                Sdk = {
                    -- Specifies whether to include preview versions of the .NET SDK when
                    -- determining which version to use for project loading.
                    IncludePrereleases = true
                }
            }
        }
        require("lspconfig").gopls.setup {
            capabilities = capabilities,
            settings = {
                gopls = {
                    hints = {
                        rangeVariableTypes = true,
                        parameterNames = true,
                        constantValues = true,
                        assignVariableTypes = true,
                        compositeLiteralFields = true,
                        compositeLiteralTypes = true,
                        functionTypeParameters = true
                    }
                }
            }
        }
        require("lspconfig").tailwindcss.setup {capabilities = capabilities}
        require("lspconfig").lua_ls.setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                    hint = {enable = true},
                    diagnostics = {globals = {"vim"}}
                }
            }
        })
        require("lspconfig").bashls.setup({
            capabilities = capabilities,
            filetypes = {"sh", "bash"},
            cmd = {"bash-language-server", "start"}
        })
        require("lspconfig").docker_compose_language_service.setup {
            capabilities = capabilities
        }
        require("lspconfig").dockerls.setup {capabilities = capabilities}
        require("lspconfig").autotools_ls.setup {capabilities = capabilities}
        require("lspconfig").texlab.setup {capabilities = capabilities}

        local signs = {
            Error = "󰅚",
            Warn = "󰀪",
            Hint = "󰌶",
            Info = ""
        }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
        end

        vim.lsp.handlers["textDocument/hover"] =
            vim.lsp.with(vim.lsp.handlers.hover, {border = "rounded"})

        vim.lsp.handlers['textDocument/signatureHelp'] =
            vim.lsp.with(vim.lsp.handlers['signature_help'], {
                border = 'rounded',
                close_events = {"CursorMoved", "BufHidden", "InsertCharPre"},
                focusable = false
            })
    end
}
