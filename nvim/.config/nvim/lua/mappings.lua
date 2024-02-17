-- Telescope
vim.keymap.set("n", "<leader>ff" ,"<CMD>Telescope find_files<CR>", { silent = true })
vim.keymap.set("n", "<leader>rg" ,"<CMD>Telescope live_grep<CR>", { silent = true })

-- Netrw
vim.keymap.set("n", "<leader>ev", "<CMD>Vexplore<CR>", { silent = true })
vim.keymap.set("n", "<leader>es", "<CMD>Sexplore<CR>", { silent = true })

-- LSP
vim.keymap.set("n", "<leader>fr", "<CMD>Lspsaga finder<CR>", { silent = true })
vim.keymap.set("n", "<leader>fi", "<CMD>Lspsaga finder imp<CR>", { silent = true })
vim.keymap.set("n", "<leader>rn", "<CMD>Lspsaga rename ++project<CR>", { silent = true })
vim.keymap.set("n", "K", "<CMD>Lspsaga hover_doc<CR>", { silent = true })
vim.keymap.set("n", "gd", "<CMD>Lspsaga peek_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>ca", "<CMD>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "<leader>ne", function() require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR }) end, { silent = true })
vim.keymap.set("n", "<leader>pe", function() require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR }) end, { silent = true })
vim.keymap.set("n", "<leader>nw", function() require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.WARNING }) end, { silent = true })
vim.keymap.set("n", "<leader>pw", function() require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.WARNING }) end, { silent = true })
vim.keymap.set("n", "<leader>nh", function() require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.HINT }) end, { silent = true })
vim.keymap.set("n", "<leader>ph", function() require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.HINT }) end, { silent = true })

-- FuGITive
vim.keymap.set("n", "<leader>gs" ,"<CMD>Git<CR>", { silent = true })
vim.keymap.set("n", "<leader>gb" ,"<CMD>Git blame<CR>", { silent = true })
vim.keymap.set("n", "<leader>gc" ,"<CMD>Git commit<CR>", { silent = true })
vim.keymap.set("n", "<leader>gd" ,"<CMD>Git diff<CR>", { silent = true })
vim.keymap.set("n", "<leader>gl" ,"<CMD>Git log<CR>", { silent = true })
vim.keymap.set("n", "<leader>gp" ,"<CMD>Git push<CR>", { silent = true })
vim.keymap.set("n", "<leader>gr" ,"<CMD>Git rebase<CR>", { silent = true })
vim.keymap.set("n", "<leader>gw" ,"<CMD>Git write<CR>", { silent = true })
vim.keymap.set("n", "<leader>gt", "<CMD>diffget //2<CR>", { silent = true })
vim.keymap.set("n", "<leader>go", "<CMD>diffget //3<CR>", { silent = true })

-- Buffers
vim.keymap.set("n", "<leader>bn","<CMD>bnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>bp","<CMD>bprevious<CR>", { silent = true })

-- Windows
vim.keymap.set("n", "<leader>-","<CMD>split<CR>", { silent = true })
vim.keymap.set("n", "<leader>=","<CMD>vsplit<CR>", { silent = true })
vim.keymap.set("n", "<leader>l","<CMD>wincmd l<CR>", { silent = true })
vim.keymap.set("n", "<leader>h","<CMD>wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<leader>j","<CMD>wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<leader>k","<CMD>wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<leader>q","<CMD>q<CR>", { silent = true })
vim.keymap.set("n", "<leader>o","<CMD>only<CR>", { silent = true })
vim.keymap.set("n", "<leader>t","<CMD>resize +3<CR>", { silent = true })
vim.keymap.set("n", "<leader>s","<CMD>resize -3<CR>", { silent = true })
vim.keymap.set("n", "<leader>w","<CMD>vertical resize +3<CR>", { silent = true })
vim.keymap.set("n", "<leader>n","<CMD>vertical resize -3<CR>", { silent = true })
vim.keymap.set("n", "<C-S-h>","<CMD>wincmd H<CR>", { silent = true })
vim.keymap.set("n", "<C-S-j>","<CMD>wincmd J<CR>", { silent = true })
vim.keymap.set("n", "<C-S-k>","<CMD>wincmd K<CR>", { silent = true })
vim.keymap.set("n", "<C-S-l>","<CMD>wincmd L<CR>", { silent = true })

-- Quickfix list.
vim.keymap.set("n", "<leader>cn","<CMD>cnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>cp","<CMD>cprev<CR>", { silent = true })
vim.keymap.set("n", "<leader>co" ,"<CMD>copen<CR>", { silent = true })
vim.keymap.set("n", "<leader>cc" ,"<CMD>cclose<CR>", { silent = true })
