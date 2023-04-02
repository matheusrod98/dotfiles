local setup, copilot = pcall(require, "copilot")
if not setup then
	return
end

-- Make a hello world in Lua

copilot.setup({
	panel = {
		enabled = false,
		auto_refresh = "true",
		keymap = {
			jump_prev = "[[",
			jump_next = "]]",
			accept = "<CR>",
			refresh = "gr",
			open = "<M-CR>"
		},
		layout = {
			position = "bottom", -- | top | left | right
			ratio = 0.4
		},
	},
	suggestion = {
		enabled = false,
		auto_trigger = false,
		debounce = 75,
		keymap = {
			accept = "<M-a>",
			accept_word = "true",
			accept_line = "true",
			next = "<M-]>",
			prev = "<M-[>",
			dismiss = "<M-d>",
		},
	},
	filetypes = {
		yaml = "false",
		markdown = "false",
		help = "false",
		gitcommit = "false",
		gitrebase = "false",
		hgcommit = "false",
		svn = "false",
		cvs = "false",
		["."] = "false",
	},
	copilot_node_command = "node", -- Node.js version must be > 16.x
	server_opts_overrides = {},
})
