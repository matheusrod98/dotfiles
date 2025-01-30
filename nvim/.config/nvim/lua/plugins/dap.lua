return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui", "theHamsta/nvim-dap-virtual-text",
        "nvim-neotest/nvim-nio", "leoluz/nvim-dap-go",
        "mfussenegger/nvim-dap-python"
    },
    config = function()
        require("dapui").setup()
        require("nvim-dap-virtual-text").setup({})

        require("dap-go").setup()
        require("dap-python").setup()

        local dap, dapui = require("dap"), require("dapui")

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        dap.adapters.gdb = {
            type = "executable",
            command = "gdb",
            args = {
                "--interpreter=dap", "--eval-command", "set print pretty on"
            }
        }

        for _, adapter in ipairs({
            "pwa-node", "pwa-chrome", "pwa-msedge", "pwa-extensionHost"
        }) do
            dap.adapters[adapter] = {
                type = "server",
                host = "localhost",
                port = "${port}",
                executable = {command = "js-debug", args = {"${port}"}}
            }
        end

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

        for _, language in ipairs({"typescriptreact", "javascriptreact"}) do
            dap.configurations[language] = {
                {
                    name = 'Launch & Debug Chrome',
                    type = 'pwa-chrome',
                    request = 'launch',
                    url = function()
                        local co = coroutine.running()
                        return coroutine.create(function()
                            vim.ui.input({
                                prompt = 'Enter URL: ',
                                default = 'http://localhost:3000'
                            }, function(url)
                                if url == nil or url == '' then
                                    return
                                else
                                    coroutine.resume(co, url)
                                end
                            end)
                        end)
                    end,
                    webRoot = vim.fn.getcwd(),
                    protocol = 'inspector',
                    sourceMaps = true,
                    userDataDir = false,
                    resolveSourceMapLocations = {
                        '${workspaceFolder}/**', '!**/node_modules/**'
                    }
                }
            }
        end
    end
}
