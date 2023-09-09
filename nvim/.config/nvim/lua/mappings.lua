require("which-key").register({
    ["<leader>ff"] = { "<CMD>Telescope find_files<CR>", "Find files" },
    ["<leader>lg"] = { "<CMD>Telescope live_grep<CR>", "String search " },
    ["<C-l><C-f>"] = { "<CMD>Lspsaga finder<CR>", "Find references" },
    ["<C-l><C-i>"] = { "<CMD>Lspsaga finder imp<CR>", "Find where was implemented" },
    ["<C-l><C-r>"] = { "<CMD>Lspsaga rename ++project<CR>", "Rename project-wise" },
    ["<C-l><C-k>"] = { "<CMD>Lspsaga hover_doc<CR>", "Doc" },
    ["<C-l><C-d>"] = { "<CMD>Lspsaga peek_definition<CR>", "View definition" },
    ["<C-l><C-a>"] = { "<CMD>Lspsaga code_action<CR>", "Show code actions" },
    ["<C-l><C-e>"] = { "<CMD>Lspsaga show_line_diagnostics<CR>", "Show line diagnostics"  },
    ["<C-l><C-e>"] = { "<CMD>Lspsaga show_cursor_diagnostics<CR>", "Show cursor diagnostics" },
    ["<C-e><C-p>"] = { "<CMD>Lspsaga diagnostic_jump_prev<CR>", "Previous diagnostic" },
    ["<C-e><C-n>"] = { "<CMD>Lspsaga diagnostic_jump_next<CR>", "Next diagnostic" },
    ["<leader>t"] = {"<CMD>NvimTreeToggle<CR>", "Toggle file tree" }
})
