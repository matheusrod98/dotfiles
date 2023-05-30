local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

bufferline.setup {
	options = {
		mode = "tabs",
		style_preset = bufferline.style_preset.default,
		themable = true,
		color_icons = true,
		show_close_icon = false,
		separator_style = "thin", -- "slant" | "slope" | "thick" | "thin"
		enforce_regular_tabs = true,
		always_show_bufferline = false,
	}
}
