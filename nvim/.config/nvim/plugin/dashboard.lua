local db = require('dashboard')
db.custom_header = {
    [[                               ]],
	[[                               ]],
	[[                               ]],
	[[                               ]],
	[[                               ]],
	[[   ▄████▄              ▒▒▒▒▒   ]],
	[[  ███▄█▀              ▒ ▄▒ ▄▒  ]],
	[[ ▐████     █  █  █   ▒▒▒▒▒▒▒▒▒ ]],
	[[  █████▄             ▒▒▒▒▒▒▒▒▒ ]],
	[[   ▀████▀            ▒ ▒ ▒ ▒ ▒ ]],
	[[                               ]],
	[[                               ]],
	[[                               ]],
	[[                               ]],
}

db.custom_center = {
    {
		icon = "🔍 ",
		desc = "finder",
		-- shortcut = "~",
		action = "Telescope find_files find_command=rg,--hidden,--files",
	},
	{
		icon = "🔨 ",
		desc = "dotfiles",
		-- shortcut = "~",
		action = "Telescope find_files find_command=rg, --hidden, --files=~/.dotfiles",
	},
	{
		icon = "📦 ",
		desc = "update plugins",
		-- shortcut = "~",
		action = "PackerUpdate",
	},
	{
		icon = "🚪 ",
		desc = "exit",
		-- shortcut = "~",
		action = "qa",
	},
}
