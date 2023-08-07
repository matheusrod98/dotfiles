-- General settings.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.path = vim.o.path .. "**"
vim.o.number = true
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
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
vim.opt.swapfile = false

-- Latex TODO: Put somewherelse later
vim.cmd([[
let g:vimtex_view_method = 'zathura'
]])

-- Restore cursor shape after exit
vim.api.nvim_create_autocmd("VimLeave", {
    callback = function()
        vim.cmd [[set guicursor=a:ver100]]
    end,
})

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

---- Center search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

---- Window management

-- Plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    -- Tools
    { "tpope/vim-obsession" },
    { "nvim-tree/nvim-tree.lua" },
    { "folke/which-key.nvim" },

    -- Coding helpers
    { "zbirenbaum/copilot.lua", cmd = "Copilot", event = "InsertEnter" },
    { "windwp/nvim-autopairs" },
    { "tpope/vim-commentary" },
    { "tpope/vim-surround" },
    { "windwp/nvim-ts-autotag" },
    { "norcalli/nvim-colorizer.lua" },

    -- General deps.
    { "nvim-lua/plenary.nvim" },

    -- Git
    { "tpope/vim-fugitive" },
    { "lewis6991/gitsigns.nvim" },

    -- Appearance
    { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
    { "nvim-lualine/lualine.nvim" },
    { "akinsho/bufferline.nvim" },
    { "kyazdani42/nvim-web-devicons" },
    { "glepnir/dashboard-nvim", event = "VimEnter" },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- Fuzzy Finder
    { "nvim-telescope/telescope.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", run = "make", name = "fzf" },

    -- Snippets
    { "rafamadriz/friendly-snippets" }, --Configure later.
    { "L3MON4D3/LuaSnip" },

    -- LSP
    { "neovim/nvim-lspconfig" },
    { "jose-elias-alvarez/null-ls.nvim" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "jayp0521/mason-null-ls.nvim" },
    { "joechrisellis/lsp-format-modifications.nvim" }, -- Check if still slow
    { "glepnir/lspsaga.nvim" },
    { "folke/trouble.nvim" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-emoji" },
    { "saadparwaiz1/cmp_luasnip" },
    { "onsails/lspkind.nvim" },


    -- TODO Configure this later.
    { "edluffy/hologram.nvim" },

    -- DAP
    -- TODO Configure later.
    { "mfussenegger/nvim-dap-python" },
    { "mfussenegger/nvim-dap" },
    { "rcarriga/nvim-dap-ui" },
    { "jay-babu/mason-nvim-dap.nvim" },

    -- Languages
    { "pmizio/typescript-tools.nvim" },
    { "lervag/vimtex" },

}, {
        ui = {
            border = "rounded",
        },
    })
