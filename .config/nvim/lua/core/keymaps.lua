vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit Insert Mode" })
vim.keymap.set("v", "jk", "<ESC>", { desc = "Exit Visual Mode" })

vim.keymap.set("n", "+", "<C-a>", { desc = "Increment Number", remap = false })
vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement Number", remap = false })

vim.keymap.set("v", "<", "<gv", { desc = "", remap = false })
vim.keymap.set("v", ">", ">gv", { desc = "", remap = false })

-- For French-Canadian keyboard layout '¸' is next to '^'
vim.keymap.set("n", "¸", "$", { desc = "jump-to-end-of-line", remap = false })
vim.keymap.set("v", "¸", "$", { desc = "jump-to-end-of-line-visual", remap = false })

-- For French-Canadian keyboard layout 'é' and 'É' are unused
-- So let's use it for quickfix list
vim.keymap.set("n", "é", "<cmd>cnext<CR>", { desc = "quickfix-next", remap = false })
vim.keymap.set("n", "É", "<cmd>cprevious<CR>", { desc = "quickfix-previous", remap = false })

-- NOTE: Ignore and comment this if your keyboard layout is fine
-- BUG: On MacOS, my personal keyboard layout is missing dead keys
-- BUG: On Windows and Linux, remember to double-type '`', '^', '¸', '¨'
-- However, when double-typing '`' it is recognized as '``' (undesired jump)
-- So for marks, do not double-type '`', it should work..
-- if vim.fn.has("macunix") then -- NOTE: That did not work for some reason..
if vim.loop.os_uname().sysname == "Darwin" then
	vim.keymap.set("n", "ç", "$", { desc = "", remap = false })
	vim.keymap.set("v", "ç", "$", { desc = "", remap = false })
	vim.keymap.set("n", "à", "`", { desc = "", remap = false })
	vim.keymap.set("n", "àà", "``", { desc = "", remap = false })
else
	vim.keymap.set("n", "à", "`a", { desc = "", remap = false })
	vim.keymap.set("n", "è", "`e", { desc = "", remap = false })
	vim.keymap.set("n", "ù", "`u", { desc = "", remap = false })
	vim.keymap.set("n", "ì", "`i", { desc = "", remap = false })
	vim.keymap.set("n", "ò", "`o", { desc = "", remap = false })
end

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Window Vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Window Horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make Splits Equal Size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" })
vim.keymap.set("n", "<leader>s<Left>", "<C-w>5<", { desc = "Decrement Current Split Width" })
vim.keymap.set("n", "<leader>s<Right>", "<C-w>5>", { desc = "Increment Current Split Width" })
vim.keymap.set("n", "<leader>s<Up>", "<C-w>-", { desc = "Decrement Current Split Height" })
vim.keymap.set("n", "<leader>s<Down>", "<C-w>+", { desc = "Increment Current Split Height" })

vim.keymap.set("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "Clear Search Highlight" })
