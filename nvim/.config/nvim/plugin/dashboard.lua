local setup, dashboard = pcall(require, "dashboard")
if not setup then
	return
end

dashboard.setup({
	theme = "doom",
	config = {
		header = {
			" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
			" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
			" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
			" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
			" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
			" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
		},
		center = {
			{
				icon = "  ",
				desc = "Recently latest session                  ",
				shortcut = "SPC s l",
				action = "SessionLoad",
			},
			{
				icon = "  ",
				desc = "Recently opened files                   ",
				action = "DashboardFindHistory",
				shortcut = "SPC f h",
			},
			{
				icon = "  ",
				desc = "Find  File                              ",
				action = "Telescope find_files find_command=rg,--hidden,--files",
				shortcut = "SPC f f",
			},
			{
				icon = "  ",
				desc = "File Browser                            ",
				action = "Telescope file_browser",
				shortcut = "SPC f b",
			},
			{
				icon = "  ",
				desc = "Find  word                              ",
				action = "Telescope live_grep",
				shortcut = "SPC f w",
			},
			{
				icon = "  ",
				desc = "Open Personal dotfiles                  ",
				action = "Telescope dotfiles path=" .. home .. "~/.dotfiles",
				shortcut = "SPC f d",
			},
		},
		footer = {},
	},
})