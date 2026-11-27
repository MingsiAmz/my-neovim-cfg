local map = vim.keymap

-- visual move selected block
map.set("v", "K", ":m '>+1<CR>gv=gv")
map.set("v", "J", ":m '<-2<CR>gv=gv")

-- splie window
map.set("n", "<leader>sv", "<C-w>v")
map.set("n", "<leader>sh", "<C-w>s")
map.set("n", "<leader>o", "<C-w>w")
map.set("n", "<leader>nt", "<cmd>tabnew<cr>", { silent = true })
map.set("n", "<leader>ct", "<cmd>tabclose<cr>", { silent = true})

-- check project
map.set("n", "<leader>tp", "<cmd>Telescope projects<cr>", { silent = true })
map.set("n", "<leader>tf", "<cmd>Telescope find_files<cr>", { silent = true})
map.set("n", "<leader>tg", "<cmd>Telescope live_grep<cr>", { silent = true })
map.set("n", "<leader>tb", "<cmd>Telescope buffers<cr>", { silent = true })
map.set("n", "<leader>td", "<cmd>Telescope file_browser<cr>", { silent = true })

-- scale font size
map.set("n", "<C-=>", function() vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1 end)
map.set("n", "<C-->", function() vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1 end)
map.set("n", "<C-0>", function() vim.g.neovide_scale_factor = 1.0 end, { desc = "Reset font scale" })

-- copy and pause
map.set("i", "<C-S-v>", '<C-o>"+p', { desc = "Paste from system clipboard" })
map.set("n", "<C-S-c>", '"+y', { desc = "Copy to system clipboard" })
map.set("v", "<C-S-c>", '"+y', { desc = "Copy to system clipboard" })

-- insert mode cursor move
map.set({"n", "i"}, "<C-z>", "<cmd>undo<cr>", {silent = true})
map.set("i", "<C-j>", "<Down>", {silent = true})
map.set("i", "<C-k>", "<Up>", {silent = true})
map.set("i", "<C-l>", "<Right>", {silent = true})
map.set("i", "<C-h>", "<Left>", {silent = true})
map.set("i", "<C-a>", "<Home>", {silent = true})
map.set("i", "<C-e>", "<End>", {silent = true})
map.set("i", "<A-e>", "<C-o>e", {silent = true})
map.set("i", "<A-b>", "<C-o>B", {silent = true})
map.set("i", "<C-d>", "<Del>", {silent = true})
map.set("i", "<A-j>", "<C-o>o", {silent = true})
map.set("i", "<A-k>", "<C-o>O", {silent = true})

-- current file path copy 
map.set("n", "<leader>np", "<cmd>:let @+=expand('%:p')<cr>")
