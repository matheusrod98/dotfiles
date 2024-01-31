-- Telescope
vim.keymap.set("n", "<leader>ff" ,"<CMD>Telescope find_files<CR>", { silent = true })
vim.keymap.set("n", "<leader>rg" ,"<CMD>Telescope live_grep<CR>", { silent = true })

-- LSP
vim.keymap.set("n", "<leader>fr", "<CMD>Lspsaga finder<CR>", { silent = true })
vim.keymap.set("n", "<leader>fi", "<CMD>Lspsaga finder imp<CR>", { silent = true })
vim.keymap.set("n", "<leader>rn", "<CMD>Lspsaga rename<CR>", { silent = true })
vim.keymap.set("n", "K", "<CMD>Lspsaga hover_doc<CR>", { silent = true })
vim.keymap.set("n", "gd", "<CMD>Lspsaga peek_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>ca", "<CMD>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "<leader>ne", function() require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR }) end, { silent = true })
vim.keymap.set("n", "<leader>pe", function() require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR }) end, { silent = true })
vim.keymap.set("n", "<leader>nw", function() require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.WARNING }) end, { silent = true })
vim.keymap.set("n", "<leader>pw", function() require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.WARNING }) end, { silent = true })
vim.keymap.set("n", "<leader>nh", function() require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.HINT }) end, { silent = true })
vim.keymap.set("n", "<leader>ph", function() require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.HINT }) end, { silent = true })

-- Others
vim.keymap.set("n", "<leader>g" ,"<CMD>G<CR>", { silent = true })

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
