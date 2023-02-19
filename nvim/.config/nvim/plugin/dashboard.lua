local setup, dashboard = pcall(require, "dashboard")
if not setup then
	return
end

local emoji = "💭 "
local handle = io.popen("fortune")
local text = handle:read("*a")
text = text:gsub("\n", "")
text = emoji .. text
handle:close()

dashboard.setup({
	theme = "hyper",
	config = {
		week_header = { enable = true },
		packages = { enable = true },
		shortcut = {
			{ desc = " Update plugins", action = "Lazy update", key = "u" },
			{ desc = " File browser", action = "e .", key = "b" },
			{ desc = " Find files", action = "Telescope find_files", key = "f" },
			{ desc = " String grep", action = "Telescope live_grep", key = "g" },
			{ desc = " Neovim config", action = "e ~/.dotfiles/nvim/.config/nvim", key = "n" },
		},
		-- footer = { text },
	},
})
