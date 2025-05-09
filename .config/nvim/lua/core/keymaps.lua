vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit Insert Mode" })
vim.keymap.set("v", "jk", "<ESC>", { desc = "Exit Visual Mode" })

vim.keymap.set("n", "+", "<C-a>", { desc = "Increment Number", remap = false })
vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement Number", remap = false })

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Window Vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Window Horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make Splits Equal Size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" })
vim.keymap.set("n", "<leader>s<Left>", "<C-w>5<", { desc = "Decrement Current Split Width" })
vim.keymap.set("n", "<leader>s<Right>", "<C-w>5>", { desc = "Increment Current Split Width" })
vim.keymap.set("n", "<leader>s<Up>", "<C-w>-", { desc = "Decrement Current Split Height" })
vim.keymap.set("n", "<leader>s<Down>", "<C-w>+", { desc = "Increment Current Split Height" })

vim.keymap.set("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "Clear Search Highlight" })
