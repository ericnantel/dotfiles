vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- TODO: clipboard support but only if installed

-- Fixing Windows Paste in Normal Mode
-- Although it works with Wezterm; it doesn't with the Windows Terminal app
-- if vim.fn.has("win32") then
-- 	vim.keymap.set("n", "<C-V>", "<C-V>", { desc = "Fixing Windows Paste in Normal Mode", remap = false })
-- end

----" TODO: Visual Mode or use surround plugin but remap
--- NOTE: perhaps no need to have macro b..
--let @a = "wbi\"\<ESC>ea\"\<ESC>"
--let @b = "I\"\<ESC>A\"\<ESC>"
--nnoremap <silent> " @a
--nnoremap <silent> "" @b
---- nnoremap <silent> " ciw"<C-R>-"<ESC>
---- nnoremap <silent> " ciw""<ESC>P

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit Insert Mode" })
vim.keymap.set("v", "jk", "<ESC>", { desc = "Exit Visual Mode" })
vim.keymap.set("n", "+", "<C-a>", { desc = "Increment Number" })
vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement Number" })
vim.keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "Clear Search Highlight" })
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Window Vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Window Horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make Splits Equal Size" })
vim.keymap.set("n", "<leader>s<Left>", "<C-w>5<", { desc = "Decrement Current Split Width" })
vim.keymap.set("n", "<leader>s<Right>", "<C-w>5>", { desc = "Increment Current Split Width" })
vim.keymap.set("n", "<leader>s<Up>", "<C-w>-", { desc = "Decrement Current Split Height" })
vim.keymap.set("n", "<leader>s<Down>", "<C-w>+", { desc = "Increment Current Split Height" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" })
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open New Tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open New Tab with Current Buffer" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close Current Tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Goto Next Tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Goto Previous Tab" })
