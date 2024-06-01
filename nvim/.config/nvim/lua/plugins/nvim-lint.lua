return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			typescript = { "eslint" },
			javascript = { "eslint" },
			sh = { "shellcheck" },
			make = { "checkmake" },
			cpp = { "cppcheck" },
			dockerfile = { "hadolint" },
			yaml = { "yamllint" },
			-- python
			-- go
		}

		vim.api.nvim_create_autocmd({
			"BufEnter",
			"TextChanged",
			"InsertLeave",
			"BufWritePost",
			"TextChangedI",
		}, {
			group = vim.api.nvim_create_augroup("lint", { clear = true }),
			callback = function()
				require("lint").try_lint()
				require("lint").try_lint("codespell")
			end,
		})
	end,
}
