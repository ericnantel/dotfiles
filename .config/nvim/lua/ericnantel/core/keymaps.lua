vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit Insert Mode w/ 'jk'" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear Search Highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment Number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement Number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Window Vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Window Horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make Splits Equal Size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" })

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open New Tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close Current Tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to Next Tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to Previous Tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open Current Buffer in New Tab" })
