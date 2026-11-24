local map = vim.keymap

-- visual move selected block
map.set("v", "K", ":m '>+1<CR>gv=gv")
map.set("v", "J", ":m '<-2<CR>gv=gv")

-- splie window
map.set("n", "<leader>sv", "<C-w>v")
map.set("n", "<leader>sh", "<C-w>s")
map.set("n", "<leader>o", "<C-w>w")

-- check project
map.set("n", "<leader>pp", "<cmd>Telescope projects<cr>", { desc = "Projects" })
map.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files"})

-- scale font size
map.set("n", "<C-=>", function() vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1 end)
map.set("n", "<C-->", function() vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1 end)
map.set("n", "<C-0>", function() vim.g.neovide_scale_factor = 1.0 end, { desc = "Reset font scale" })

-- copy and pause
map.set("i", "<C-S-v>", '<C-o>"+p', { desc = "Paste from system clipboard" })
map.set("n", "<C-S-c>", '"+y', { desc = "Copy to system clipboard" })
map.set("v", "<C-S-c>", '"+y', { desc = "Copy to system clipboard" })

-- curser move
map.set("i", "<C-p>", "<C-o>k", { desc = "Insert: move up" })
map.set("i", "<C-n>", "<C-o>j", { desc = "Insert: move down" })
map.set("i", "<C-b>", "<Left>", { desc = "Insert: left" })
map.set("i", "<C-f>", "<Right>", { desc = "Insert: right" })
map.set("i", "<C-S-b>", "<C-o>b", { desc = "Insert: prev word" })
map.set("i", "<C-S-f>", "<C-o>w", { desc = "Insert: next word" })
map.set("i", "<C-d>", "<Del>", { desc = "Delete char after cursor" })
map.set("i", "<C-S-d>", "<C-o>dw", { desc = "Insert: delete to end of word" })
map.set("i", "<C-S-BS>", "<C-o>dB", { desc = "Insert: delete previous word" })

map.set("n", "<leader>tf", "<cmd>NvimTreeOpen<cr>")
map.set("n", "B", "ge", { desc = "Prev word end" })
map.set("n", "<C-f>", "<Right>", { desc = "Insert: right" })
map.set("n", "<C-b>", "<Left>", { desc = "Insert: left"})

-- current file path copy 
map.set("n", "<leader>np", "<cmd>:let @+=expand('%:p')<cr>")
