-- vim-maximizer keymaps
vim.keymap.set(
	"n",
	"<leader>sm",
	"<cmd>MaximizerToggle<CR>",
	{ desc = "Maximize/Minimize Split Window", remap = false }
)
vim.keymap.set(
	"v",
	"<leader>sm",
	"<cmd>MaximizerToggle<CR>gv",
	{ desc = "Maximize/Minimize Split Window", remap = false }
)

-- Tmux Navigator keymaps
vim.keymap.set("n", "<c-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Tmux Navigate Left", silent = true })
vim.keymap.set("n", "<c-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Tmux Navigate Down", silent = true })
vim.keymap.set("n", "<c-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Tmux Navigate Up", silent = true })
vim.keymap.set("n", "<c-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Tmux Navigate Right", silent = true })

-- vim-commentary keymaps
vim.keymap.set("n", "z", "gc", { desc = "", remap = true, silent = true })
vim.keymap.set("n", "zz", "gcc", { desc = "", remap = true, silent = true })
vim.keymap.set("v", "z", "gc", { desc = "", remap = true, silent = true })

-- vim-signature keymaps
vim.keymap.set("n", "m;", "]`", { desc = "", remap = true, silent = true })
-- TODO: Previous mark ?

-- nvim-tree keymaps
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer Tree" })

-- trouble keymaps
-- NOTE: This is the older TroubleAPI (v2.10.0)
-- Having issues with the cursor not focusing on Trouble with latest TroubleAPI (v3.0.0)
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<CR>", { desc = "Toggle Trouble" })
vim.keymap.set("n", "<leader>xt", "<cmd>TodoTrouble<CR>", { desc = "Toggle TODOs in Trouble" })

-- harpoon keymaps
-- NOTE: Problem with Harpoon2 current state is that it is missing marks
vim.keymap.set("n", "<leader>hh", function()
	local harpoon = require("harpoon")
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon Toggle Quick Menu" })
vim.keymap.set("n", "<leader>ha", function()
	local harpoon = require("harpoon")
	harpoon:list():add()
end, { desc = "Harpoon Add File To List" })
-- vim.keymap.set("n", "<leader>hm", function()
-- -- NOTE: Marks were not added to version 2..
-- 	local harpoon = require("harpoon")
-- 	harpoon.mark:add_file()
-- end, { desc = "Harpoon Add Mark To List" })
vim.keymap.set("n", "<leader>hx", function()
	local harpoon = require("harpoon")
	harpoon:list():clear()
end, { desc = "Harpoon Clear List" })
vim.keymap.set("n", "<leader>h1", function()
	local harpoon = require("harpoon")
	harpoon:list():select(1)
end, { desc = "Harpoon Select File 1" })
vim.keymap.set("n", "<leader>h2", function()
	local harpoon = require("harpoon")
	harpoon:list():select(2)
end, { desc = "Harpoon Select File 2" })
vim.keymap.set("n", "<leader>h3", function()
	local harpoon = require("harpoon")
	harpoon:list():select(3)
end, { desc = "Harpoon Select File 3" })
vim.keymap.set("n", "<leader>h4", function()
	local harpoon = require("harpoon")
	harpoon:list():select(4)
end, { desc = "Harpoon Select File 4" })
vim.keymap.set("n", "<leader>h;", function()
	-- NOTE: This doesn't cycle like version 1..
	local harpoon = require("harpoon")
	harpoon:list():next()
end, { desc = "Harpoon Navigate List Next" })

-- telescope keymaps
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Telescope Fuzzy Find Files in CWD" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<CR>", { desc = "Telescope Fuzzy Search Git Files" })
vim.keymap.set(
	"n",
	"<leader>fc",
	"<cmd>Telescope grep_string<CR>",
	{ desc = "Telescope Grep String Under Cursor in CWD" }
)
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "Telescope Live Grep String in CWD" })
vim.keymap.set(
	"n",
	"<leader>f/",
	"<cmd>Telescope current_buffer_fuzzy_find<CR>",
	{ desc = "Telescope Live Fuzzy Search in Current Buffer" }
)
vim.keymap.set(
	"n",
	"<leader>ft",
	"<cmd>Telescope current_buffer_tags<CR>",
	{ desc = "Telescope List All Tags in Current Buffer" }
)
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope List Open Buffers" })
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Telescope List Previously Open Files" })
vim.keymap.set("n", "<leader>fx", "<cmd>TodoTelescope<CR>", { desc = "Telescope List Todos" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Telescope List Available Help Tags" })
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope marks<CR>", { desc = "Telescope List Vim Marks And Their Value" })
vim.keymap.set("n", "<leader>fq", "<cmd>Telescope quickfix<CR>", { desc = "Telescope List Items In The Quickfix List" })
vim.keymap.set("n", "<leader>fj", "<cmd>Telescope jumplist<CR>", { desc = "Telescope List Jump List Entries" })
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope registers<CR>", { desc = "Telescope List Vim Registers" })
-- TODO fi (find implementation) fg (find diagnostics) f? (find definitions) f? (find type definitions)
-- requires lsp configured possibly..
-- TODO does mapping C-j and C-k is because we want to use jk to close telescope because it maps to escape ??
-- Is there a close command for telescope ??
