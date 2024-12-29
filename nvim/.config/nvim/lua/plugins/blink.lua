return {
    'saghen/blink.cmp',
    dependencies = {
        'rafamadriz/friendly-snippets', {'L3MON4D3/LuaSnip', version = 'v2.*'}
    },
    version = '*',
    opts = {
        snippets = {
            expand = function(snippet)
                require('luasnip').lsp_expand(snippet)
            end,
            active = function(filter)
                if filter and filter.direction then
                    return require('luasnip').jumpable(filter.direction)
                end
                return require('luasnip').in_snippet()
            end,
            jump = function(direction)
                require('luasnip').jump(direction)
            end
        },
        completion = {
            menu = {border = 'none'},
            documentation = {
                window = {border = 'rounded'},
                auto_show = true,
                auto_show_delay_ms = 500
            },
            ghost_text = {enabled = false}
        },
        signature = {window = {border = 'rounded'}, enabled = false},
        keymap = {
            preset = 'default',
            ['<C-space>'] = {'show', 'show_documentation', 'hide_documentation'},
            ['<C-e>'] = {'hide'},
            ['<C-y>'] = {'select_and_accept'},
            ['<CR>'] = {'select_and_accept', 'fallback'},

            ['<C-p>'] = {'select_prev', 'fallback'},
            ['<C-n>'] = {'select_next', 'fallback'},

            ['<C-b>'] = {'scroll_documentation_up', 'fallback'},
            ['<C-f>'] = {'scroll_documentation_down', 'fallback'},

            ['<Tab>'] = {'snippet_forward', 'fallback'},
            ['<S-Tab>'] = {'snippet_backward', 'fallback'}
        },
        appearance = {
            -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            -- Adjusts spacing to ensure icons are aligned
            nerd_font_variant = 'mono'
        },
        sources = {
            default = {'lsp', 'path', 'snippets', 'buffer', 'luasnip'},
            cmdline = {}
        }
    },
    keymap = {preset = 'default', ['<CR>'] = {'accept', 'fallback'}},
    opts_extend = {"sources.default"}
}
