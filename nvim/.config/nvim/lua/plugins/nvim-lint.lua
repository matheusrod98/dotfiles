return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters.eslint.cmd = "eslint"
		require("lint").linters_by_ft = {
			typescript = { "eslint" },
			javascript = { "eslint" },
			make = { "checkmake" },
			gitcommit = { "commitlint" },
			cpp = { "cppcheck" },
			dockerfile = { "hadolint" },
			lua = { "luacheck" },
			go = { "revive" },
			sh = { "shellcheck" },
			yaml = { "yamllint" },
			cloudformation = { "cfn-lint" },
			-- markdown = { "markdownlint" }, // Not working
			dotenv = { "dotenv-linter" },
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
