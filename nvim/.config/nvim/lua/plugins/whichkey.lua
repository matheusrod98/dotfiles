return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = {
        {
            "<C-x>",
            '<CMD>lua require("dial.map").dec_visual("visual")<CR>',
            mode = "v",
            {noremap = true}
        }, {
            "<C-a>",
            '<CMD>lua require("dial.map").inc_visual("visual")<CR>',
            mode = "v",
            {noremap = true}
        }, {"<leader>p", "<CMD>Telescope find_files<CR>", mode = "n"},
        {"<leader>l", "<CMD>Telescope live_grep<CR>", mode = "n"},
        {"[c", "<CMD>Gitsigns prev_hunk<CR>", mode = "n"},
        {"]c", "<CMD>Gitsigns next_hunk<CR>", mode = "n"},
        {"<leader>sh", "<CMD>Gitsigns stage_hunk<CR>", mode = "n"},
        {"<leader>uh", "<CMD>Gitsigns undo_stage_hunk<CR>", mode = "n"},
        {"<leader>ph", "<CMD>Gitsigns preview_hunk<CR>", mode = "n"},
        {"<leader>gs", "<CMD>Neogit<CR>", mode = "n"},
        {"<leader>gb", "<CMD>Neogit branch<CR>", mode = "n"},
        {
            "<leader>gp",
            require('neogit').action('pull', 'from_pushremote'),
            mode = "n"
        }, {
            "<leader>gc",
            require('neogit').action('branch', 'checkout_local_branch'),
            mode = "n"
        },
        {
            "<leader>gP",
            require('neogit').action('push', 'to_pushremote'),
            mode = "n"
        },
        {
            "<leader>gl",
            require('neogit').action('log', 'log_all_branches'),
            mode = "n"
        }, {"<C-s>", "<CMD>lua vim.lsp.buf.signature_help()<CR>", mode = "i"},
        {
            "<leader>ih",
            "<CMD> lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({0}),{0})<CR>",
            mode = "n"
        }, {"K", "<CMD>Lspsaga hover_doc<CR>", mode = "n"},
        {"<leader>rn", "<CMD>Lspsaga rename<CR>", mode = "n"},
        {"<leader>ca", "<CMD>Lspsaga code_action<CR>", mode = "n"},
        {"gd", "<CMD>Lspsaga peek_definition<CR>", mode = "n"},
        {"gD", "<CMD>Lspsaga peek_type_definition<CR>", mode = "n"},
        {"<leader>ic", "<CMD>Telescope lsp_incoming_calls<CR>", mode = "n"},
        {"<leader>oc", "<CMD>Telescope lsp_outgoing_calls<CR>", mode = "n"},
        {"<leader>wd", "<CMD>Telescope diagnostics<CR>", mode = "n"},
        {"<leader>gr", "<CMD>Telescope lsp_references<CR>", mode = "n"},
        {"<leader>gi", "<CMD>Telescope lsp_implementations<CR>", mode = "n"}, {
            "]e",
            "<CMD>lua require('lspsaga.diagnostic'):goto_next({ severity = vim.diagnostic.severity.ERROR })<CR>",
            mode = "n"
        }, {
            "[e",
            "<CMD>lua require('lspsaga.diagnostic'):goto_prev({ severity = vim.diagnostic.severity.ERROR })<CR>",
            mode = "n"
        }, {
            "]w",
            "<CMD>lua require('lspsaga.diagnostic'):goto_next({ severity = vim.diagnostic.severity.WARN })<CR>",
            mode = "n"
        }, {
            "[w",
            "<CMD>lua require('lspsaga.diagnostic'):goto_prev({ severity = vim.diagnostic.severity.WARN })<CR>",
            mode = "n"
        }, {
            "]h",
            "<CMD>lua require('lspsaga.diagnostic'):goto_next({ severity = vim.diagnostic.severity.HINT })<CR>",
            mode = "n"
        }, {
            "[h",
            "<CMD>lua require('lspsaga.diagnostic'):goto_prev({ severity = vim.diagnostic.severity.HINT })<CR>",
            mode = "n"
        }, {
            "]i",
            "<CMD>lua require('lspsaga.diagnostic'):goto_next({ severity = vim.diagnostic.severity.INFO })<CR>",
            mode = "n"
        }, {
            "[i",
            "<CMD>lua require('lspsaga.diagnostic'):goto_prev({ severity = vim.diagnostic.severity.INFO })<CR>",
            mode = "n"
        },
        {
            "[d",
            "<CMD>lua require('lspsaga.diagnostic'):goto_prev()<CR>",
            mode = "n"
        },
        {
            "]d",
            "<CMD>lua require('lspsaga.diagnostic'):goto_next()<CR>",
            mode = "n"
        }, {"]b", "<CMD>bnext<CR>", mode = "n"},
        {"[b", "<CMD>bprevious<CR>", mode = "n"},
        {"[t", "<CMD>tabprevious<CR>", mode = "n"},
        {"]t", "<CMD>tabnext<CR>", mode = "n"},
        {"]q", "<CMD>cnext<CR>", mode = "n"},
        {"[q", "<CMD>cprev<CR>", mode = "n"}, {
            "<leader>q",
            function()
                local windows = vim.fn.getwininfo()
                for _, win in pairs(windows) do
                    if win["quickfix"] == 1 then
                        vim.cmd.cclose()
                        return
                    end
                end
                vim.cmd.copen()
            end,
            mode = "n"
        }, {"-", "<CMD>Oil<CR>", mode = "n"},
        {"<leader>ut<CMD>UndotreeToggle | UndotreeFocus<CR>", mode = "n"},
        {"<C-c>", "<CMD>noh<CR>", mode = "n"},
        {"<Esc", ":<CMD>nohlsearch<CR>", mode = "n"},
        {"<leader>wx", "<CMD>split<CR>", mode = "n"},
        {"<leader>wv", "<CMD>vsplit<CR>", mode = "n"},
        {"<leader>wh", "<CMD>wincmd h<CR>", mode = "n"},
        {"<leader>wj", "<CMD>wincmd j<CR>", mode = "n"},
        {"<leader>wk", "<CMD>wincmd k<CR>", mode = "n"},
        {"<leader>wl", "<CMD>wincmd l<CR>", mode = "n"},
        {"<leader>wo", "<CMD>only<CR>", mode = "n"},
        {"<leader>wt", "<CMD>resize +3<CR>", mode = "n"},
        {"<leader>ws", "<CMD>resize -3<CR>", mode = "n"},
        {"<leader>ww", "<CMD>vertical resize +3<CR>", mode = "n"},
        {"<leader>wn", "<CMD>vertical resize -3<CR>", mode = "n"},
        {"<leader>wq", "<CMD>q<CR>", mode = "n"},
        {"<Esc>", "<CMD>nohlsearch<CR>", mode = "n"},
        {"<leader>t", "<CMD>QuickType<CR>", mode = "n"},
        {"<leader>dc", "<CMD> lua require('dap').continue()<CR>", mode = "n"},
        {"<leader>do", "<CMD> lua require('dap').step_over()<CR>", mode = "n"},
        {"<leader>di", "<CMD> lua require('dap').step_into()<CR>", mode = "n"},
        {"<leader>dO", "<CMD> lua require('dap').step_out()<CR>", mode = "n"},
        {
            "<leader>db",
            "<CMD> lua require('dap').toggle_breakpoint()<CR>",
            mode = "n"
        }, {"<leader>dt", "<CMD>DapUiToggle<CR>", mode = "n"},
        {"<leader>dr", "<CMD> lua require('dap').repl.open()<CR>", mode = "n"},
        {
            "<leader>zR",
            "<CMD> lua require('ufo').openAllFolds()<CR>",
            mode = "n"
        },
        {
            "<leader>zM",
            "<CMD> lua require('ufo').closeAllFolds()<CR>",
            mode = "n"
        }
    }
}
