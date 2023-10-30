require("which-key").register({
    ["<leader>ff"] = { "<CMD>Telescope find_files<CR>", "Find files" },
    ["<leader>lg"] = { "<CMD>Telescope live_grep<CR>", "String search " },
    ["<C-l><C-f>"] = { "<CMD>Lspsaga finder<CR>", "Find references" },
    ["<C-l><C-i>"] = { "<CMD>Lspsaga finder imp<CR>", "Find where was implemented" },
    ["<C-l><C-r>"] = { "<CMD>Lspsaga rename ++project<CR>", "Rename project-wise" },
    ["<C-l><C-k>"] = { "<CMD>Lspsaga hover_doc<CR>", "Doc" },
    ["<C-l><C-d>"] = { "<CMD>Lspsaga peek_definition<CR>", "View definition" },
    ["<C-l><C-a>"] = { "<CMD>Lspsaga code_action<CR>", "Show code actions" },
    ["<C-l><C-e>"] = { function() require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR }) end, "Go to next ERROR message"},
    ["<C-l><C-S-e>"] = { function() require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR }) end, "Go to prev ERROR message"},
    ["<C-l><C-w>"] = { function() require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.WARNING }) end, "Go to next WARNING message"},
    ["<C-l><C-S-w>"] = { function() require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.WARNING }) end, "Go to prev WARNING message"},
    ["<C-l><C-h>"] = { function() require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.HINT }) end, "Go to next HINT message"},
    ["<C-l><C-S-h>"] = { function() require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.HINT }) end, "Go to prev HINT message"},
    ["<leader>t"] = { "<CMD>NvimTreeToggle<CR>", "Toggle file tree" },
    ["<leader>g"] = { "<CMD>G<CR>", "Open fugitive" }
})
