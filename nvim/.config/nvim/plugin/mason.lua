local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end

local lspconfig = require("lspconfig")
mason.setup({
    ui = {
        border = "single",
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_lspconfig.setup({
    ensure_installed = {
        "bashls",
        "clangd",
        "cmake",
        "dockerls",
        "gopls",
        "sumneko_lua",
        "pyright",
        "vimls",
        "angularls",
        "tsserver",
        "html",
        "cssls",
    },
    automatic_installation = true,
})

mason_lspconfig.setup_handlers({
    function(server_name)
        require("lspconfig")[server_name].setup {
            on_attach = on_attach,
            flags = lsp_flags,
        }
    end,

    ["bashls"] = function ()
        lspconfig.bashls.setup {
            filetypes = { "zsh", "sh" }
        }
    end,
    ["sumneko_lua"] = function ()
        lspconfig.sumneko_lua.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    }
                }
            }
        }
    end,
})

mason_null_ls.setup({
    ensure_installed = {
        "prettier",
        "eslint_d",
        "pylint",
        "shellcheck",
        "cpplint",
        "clang_format"
    },
    automatic_installation = false,
    automatic_setup = false,
})
