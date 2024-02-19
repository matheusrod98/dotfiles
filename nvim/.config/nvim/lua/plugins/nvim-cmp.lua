return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "neovim/nvim-lspconfig",
        "onsails/lspkind.nvim",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-calc",
        "hrsh7th/cmp-nvim-lsp",
        "davidsierradz/cmp-conventionalcommits",
        "js-everts/cmp-tailwind-colors",
        "saadparwaiz1/cmp_luasnip",
        "amarakon/nvim-cmp-buffer-lines",
        "hrsh7th/cmp-emoji",
    },

    config = function()
        local cmp = require"cmp"
        local lspkind = require("lspkind")

        local kind_icons = {
            Text = "",
            Method = "󰆧",
            Function = "󰊕",
            Constructor = "",
            Field = "󰇽",
            Variable = "󰂡",
            Class = "󰠱",
            Interface = "",
            Module = "",
            Property = "󰜢",
            Unit = "",
            Value = "󰎠",
            Enum = "",
            Keyword = "󰌋",
            Snippet = "",
            Color = "󰏘",
            File = "󰈙",
            Reference = "",
            Folder = "󰉋",
            EnumMember = "",
            Constant = "󰏿",
            Struct = "",
            Event = "",
            Operator = "󰆕",
            TypeParameter = "󰅲",
        }

        cmp.setup({
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end
            },
            window = {
                documentation = cmp.config.window.bordered(),
                completion = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "path" },
                { name = "buffer" },
                { name = "calc" },
                { name = "tailwind-colors" },
                { name = "conventionalcommits" },
                -- { name = "buffer-lines" },
                { name = "emoji" },
            }),
            formatting = {
                format = function(entry, item)
                    item.menu = item.kind
                    item = require("cmp-tailwind-colors").format(entry, item)
                    if kind_icons[item.kind] then
                        item.kind = kind_icons[item.kind] .. " "
                    end
                    return item
                end,
            },
        })
    end
}
