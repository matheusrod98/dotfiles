local setup, dashboard = pcall(require, "dashboard")
if not setup then
	return
end

-- local emoji = "💭 "
-- local handle = io.popen("fortune")
-- local text = handle:read("*a")
-- text = text:gsub("\n", "")
-- handle:close()

dashboard.setup({
	theme = "hyper",
	config = {
		week_header = { enable = true },
		packages = { enable = false },
		shortcut = {
			{ desc = " Logseq", action = "e ~/Logseq", key = "l" },
			{ desc = " File browser", action = "e .", key = "b" },
			{ desc = " Neovim config", action = "e ~/.dotfiles/nvim/.config/nvim", key = "c" },
			{ desc = "󰏖 Update plugins", action = "Lazy update", key = "u" },
		},
		footer = {},
	},
})
