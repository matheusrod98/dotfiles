-- Plugins.
local use = require("packer").use
require("packer").startup(function()
	use("wbthomason/packer.nvim")

	-- Appearence
	use({ "ellisonleao/gruvbox.nvim" })
	use("bluz71/vim-moonfly-colors")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("nvim-lualine/lualine.nvim")
	use("kyazdani42/nvim-web-devicons")
	use({ "akinsho/bufferline.nvim", tag = "v3.*" })
	use("glepnir/dashboard-nvim")

	-- LSP & autocompletion
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("glepnir/lspsaga.nvim")
	use("onsails/lspkind.nvim")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")
	use("folke/trouble.nvim")

	-- File management
	use("nvim-tree/nvim-tree.lua")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope-file-browser.nvim" })

	-- Etc...
	use("windwp/nvim-ts-autotag")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("numToStr/Comment.nvim")
	use("windwp/nvim-autopairs")
	use("lewis6991/gitsigns.nvim")
	-- use("github/copilot.vim")

	-- Web
	use("norcalli/nvim-colorizer.lua")
end)

-- General settings.
vim.o.path = vim.o.path .. "**"
vim.o.number = true
vim.bo.sw = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.expandtab = true
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.cmdheight = 2
vim.o.mouse = "a"
vim.o.signcolumn = "yes"
vim.wo.foldenable = false
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.clipboard = "unnamedplus"
vim.wo.wrap = false
vim.o.termguicolors = true
vim.o.relativenumber = true
vim.o.scrolloff = 8

-- Leader key.
vim.g.mapleader = ","

-- Mappings
---- Move blocks of code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

---- Center cursor after half-page movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

---- Center cursor after paragraph movement
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")

---- Center cursor after bottom file movement
vim.keymap.set("n", "G", "Gzz")

---- Center search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

---- Type a JSON object
vim.keymap.set("n", "<leader>jt", ":w !command quicktype -o % --just-types<CR>e")
