return {
    'saghen/blink.cmp',
    dependencies = {
        'rafamadriz/friendly-snippets', {'L3MON4D3/LuaSnip', version = 'v2.*'}
    },
    version = '*',
    opts = {
        enabled = function()
            return not vim.tbl_contains({"markdown"}, vim.bo.filetype) and
                       vim.bo.buftype ~= "prompt" and vim.b.completion ~= false
        end,
        cmdline = {enabled = false},
        completion = {
            accept = {auto_brackets = {enabled = false}},
            documentation = {window = {border = 'rounded'}, auto_show = true},
            list = {selection = {preselect = true, auto_insert = false}}
        },
        signature = {enabled = true, window = {border = 'rounded'}},
        sources = {default = {'lsp', 'path', 'snippets', 'buffer'}},
        keymap = {preset = 'enter'}
    }
}
