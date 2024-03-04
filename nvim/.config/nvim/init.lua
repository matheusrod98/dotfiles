vim.g.mapleader = ","

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", { ui = { border = "rounded" } })
require("settings")
require("mappings")

-- [x]: Setup Lua and Neovim LSP.
-- [x]: Show signature while typing.
-- [x]: Resize windows keybindings.
-- [x]: Keybinding to toggle quickfix list.
-- [ ]: Edit quickfix list.
-- [ ]: Bordered hover doc window.
-- [ ]: Setup folding.
-- [ ]: Setup neotest.
-- [ ]: Setup nvim_dap and nvim_dap_ui.
-- [ ]: Setup vim_dadbod and vim_dadbod_ui.
