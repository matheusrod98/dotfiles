local whichkey_setup, whichkey = pcall(require, "which-key")
if not whichkey_setup then
	return
end

whichkey.setup({})
whichkey.register({
	-- Mappings goes here
})
