return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui", "theHamsta/nvim-dap-virtual-text",
        "nvim-neotest/nvim-nio", "mxsdev/nvim-dap-vscode-js", {
            'microsoft/vscode-js-debug',
            build = 'npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out'
        }, -- Languages
        "leoluz/nvim-dap-go", "mfussenegger/nvim-dap-python"
    },
    config = function()
        local dap = require("dap")
        require("dapui").setup()
        require("nvim-dap-virtual-text").setup({})

        require("dap-go").setup()
        require("dap-python").setup()

        require("dap-vscode-js").setup {
            debugger_path = vim.fn.stdpath 'data' .. '/lazy/vscode-js-debug',
            adapters = {'pwa-node', 'pwa-chrome'}
        }

        local dap = require("dap")
        dap.adapters.gdb = {
            type = "executable",
            command = "gdb",
            args = {
                "--interpreter=dap", "--eval-command", "set print pretty on"
            }
        }

        dap.adapters.delve = function(callback, config)
            if config.mode == 'remote' and config.request == 'attach' then
                callback({
                    type = 'server',
                    host = config.host or '127.0.0.1',
                    port = config.port or '38697'
                })
            else
                callback({
                    type = 'server',
                    port = '${port}',
                    executable = {
                        command = 'dlv',
                        args = {
                            'dap', '-l', '127.0.0.1:${port}', '--log',
                            '--log-output=dap'
                        },
                        detached = vim.fn.has("win32") == 0
                    }
                })
            end
        end

        dap.configurations.c = {
            {
                name = "Launch",
                type = "gdb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ',
                                        vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = "${workspaceFolder}",
                stopAtBeginningOfMainSubprogram = false
            }, {
                name = "Select and attach to process",
                type = "gdb",
                request = "attach",
                program = function()
                    return vim.fn.input('Path to executable: ',
                                        vim.fn.getcwd() .. '/', 'file')
                end,
                pid = function()
                    local name = vim.fn.input('Executable name (filter): ')
                    return require("dap.utils").pick_process({filter = name})
                end,
                cwd = '${workspaceFolder}'
            }, {
                name = 'Attach to gdbserver :1234',
                type = 'gdb',
                request = 'attach',
                target = 'localhost:1234',
                program = function()
                    return vim.fn.input('Path to executable: ',
                                        vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}'
            }
        }
        dap.configurations.cpp = dap.configurations.c

        -- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
        dap.configurations.go = {
            {
                type = "delve",
                name = "Debug",
                request = "launch",
                program = "${file}"
            }, {
                type = "delve",
                name = "Debug test", -- configuration for debugging test files
                request = "launch",
                mode = "test",
                program = "${file}"
            }, -- works with go.mod packages and sub packages 
            {
                type = "delve",
                name = "Debug test (go.mod)",
                request = "launch",
                mode = "test",
                program = "./${relativeFileDirname}"
            }
        }

        dap.adapters.coreclt = {
            type = 'executable',
            command = 'netcoredbg',
            args = {'--interpreter=vscode'}
        }

        dap.configurations.cs = {
            {
                type = "coreclr",
                name = "launch - netcoredbg",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to dll',
                                        vim.fn.getcwd() .. '/bin/Debug/', 'file')
                end
            }
        }

        for _, language in ipairs({"typescript", "javascript"}) do
            dap.configurations[language] = {
                {
                    type = "pwa-node",
                    request = "launch",
                    name = "Launch file",
                    program = "${file}",
                    cwd = "${workspaceFolder}"
                }, {
                    type = "pwa-node",
                    request = "attach",
                    name = "Attach",
                    processId = require'dap.utils'.pick_process,
                    cwd = "${workspaceFolder}"
                }, {
                    type = "pwa-node",
                    request = "attach",
                    name = "Auto Attach",
                    cwd = "${workspaceFolder}",
                    protocol = "inspector"
                }
            }
        end

        for _, lang in ipairs {"typescriptreact", "javascriptreact"} do
            dap.configurations[lang] = {
                {
                    type = "pwa-chrome",
                    request = "launch",
                    name = "Launch Chrome",
                    url = "http://localhost:5173",
                    sourceMaps = true,
                    protocol = "inspector"
                }
            }
        end
    end
}
