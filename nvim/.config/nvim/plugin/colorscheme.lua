require("catppuccin").setup {
    flavour = "mocha",
    color_overrides = {
        mocha = {
	    base = "#000000",
	},
    },

    integrations = {
        nvimtree = true,
    },

    custom_highlights = {
        NvimTreeNormal = { bg = "NONE" },
    },

    native_lsp = {
	enabled = true,
        virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
        },
    },

	underlines = {
		errors = { "underline" },
		hints = { "underline" },
		warnings = { "underline" },
		information = { "underline" },
	}
}

vim.api.nvim_command "colorscheme catppuccin"
