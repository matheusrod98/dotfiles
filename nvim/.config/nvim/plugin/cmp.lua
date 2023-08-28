local cmp_setup, cmp = pcall(require, "cmp")
if not cmp_setup then
	return
end

local luasnip_setup, luasnip = pcall(require, "luasnip")
if not luasnip_setup then
	return
end

local lspkind_setup, lspkind = pcall(require, "lspkind")
if not lspkind_setup then
	return
end

local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_setup then
	return
end

local cmp_autopairs_setup, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_setup then
	return
end

local tailwindcss_colorizer_cmp_setup, tailwindcss_colorizer_cmp = pcall(require, "tailwindcss-colorizer-cmp")
if not tailwindcss_colorizer_cmp_setup then
	return
end

cmp.setup({
    snippet = {
        expand = function(args)
	luasnip.lsp_expand(args.body)
        end,
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
        { name = "emoji" },
        { name = "calc" },
        { name = "buffer-lines" },
        { name = "buffer" },
    }),
    formatting = {
        format = lspkind.cmp_format({
            maxwidth = 50,
            ellipsis_char = "...",
            before = tailwindcss_colorizer_cmp.formatter
        }),
    },
})

cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)
