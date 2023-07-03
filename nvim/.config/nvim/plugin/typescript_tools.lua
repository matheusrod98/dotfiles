local setup, typescript_tools = pcall(require, "typescript-tools")
if not setup then
	return
end

typescript_tools.setup({
	on_attach = on_attach,
	settings = {
		separate_diagnostic_server = true,
		publish_diagnostic_on = "insert_leave",
		tsserver_max_memory = "auto",
		tsserver_plugins = {},
		tsserver_format_options = {},
		tsserver_file_preferences = {},
	},
})
