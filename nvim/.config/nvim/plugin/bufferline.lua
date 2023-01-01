local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

local catppuccin_groups_integration_setup, catppuccin_integrations_bufferline =
	pcall(require, "catppuccin.groups.integrations.bufferline")
if not catppuccin_groups_integration_setup then
	return
end

-- after = "catpuccin",
-- config = function()
--     bufferline.setup({
--         highlights = catppuccin_integrations_bufferline.get(),
--         options = {
--             mode = "tabs",
--             always_show_bufferline = false,
--         },
--     })
-- end

bufferline.setup({
	options = {
		mode = "tabs",
		always_show_bufferline = false,
	},
})
