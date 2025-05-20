-- vim-tmux-navigator keymaps
vim.keymap.set("n", "<c-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Tmux Navigate Left", silent = true })
vim.keymap.set("n", "<c-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Tmux Navigate Down", silent = true })
vim.keymap.set("n", "<c-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Tmux Navigate Up", silent = true })
vim.keymap.set("n", "<c-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Tmux Navigate Right", silent = true })

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

-- vim-signature keymaps
vim.keymap.set("n", "m;", "]`", { desc = "", remap = true, silent = true })
-- TODO: Previous mark ?

-- vim-commentary keymaps
vim.keymap.set("n", "z", "gc", { desc = "", remap = true, silent = true })
vim.keymap.set("n", "zz", "gcc", { desc = "", remap = true, silent = true })
vim.keymap.set("v", "z", "gc", { desc = "", remap = true, silent = true })

-- nvim-tree keymaps
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer Tree" })

-- trouble keymaps
-- NOTE: This is the older TroubleAPI (v2.10.0)
-- Having issues with the cursor not focusing on Trouble with latest TroubleAPI (v3.0.0)
-- NOTE: I am commenting those below, because I'd rather use Telescope + Quickfix instead
-- vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<CR>", { desc = "Toggle Trouble" })
-- vim.keymap.set("n", "<leader>xt", "<cmd>TodoTrouble<CR>", { desc = "Toggle TODOs in Trouble" })

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
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "find-files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<CR>", { desc = "find-git-files" })
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "find-grep-word" })
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "find-grep-string" })
vim.keymap.set("n", "<leader>f/", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "find-buffer-fuzzy" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "find-buffers" })
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "find-previously-opened-files" })
vim.keymap.set("n", "<leader>fx", "<cmd>TodoTelescope<CR>", { desc = "find-trouble-todos" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "find-help-tags" })
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope marks<CR>", { desc = "find-marks" })
-- vim.keymap.set("n", "<leader>fq", "<cmd>Telescope quickfix<CR>", { desc = "find-quickfix" })
-- vim.keymap.set("n", "<leader>fj", "<cmd>Telescope jumplist<CR>", { desc = "find-jumplist" })
-- vim.keymap.set("n", "<leader>fr", "<cmd>Telescope registers<CR>", { desc = "find-registers" })

-- lsp, diagnostics, documentation keymaps
function LspAttach(ev)
	print("Attaching Lsp Keybinds..")

	-- NOTE: It seems there's a keybind grr that adds references to quickfix
	-- TODO: Find in documentation what other ways exist we can directly add to quickfix
	vim.keymap.set(
		"n",
		"<leader>fr",
		"<cmd>Telescope lsp_references<CR>",
		{ desc = "find-references", buffer = ev.buf, silent = true }
	)
	vim.keymap.set(
		"n",
		"grr",
		vim.lsp.buf.references,
		{ desc = "goto-references-quickfix", buffer = ev.buf, silent = true }
	)
	vim.keymap.set("n", "grn", vim.lsp.buf.rename, { desc = "goto-rename-quickfix", buffer = ev.buf, silent = true })
	vim.keymap.set(
		"n",
		"gri",
		vim.lsp.buf.implementation,
		{ desc = "goto-implementation-quickfix", buffer = ev.buf, silent = true }
	)
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "goto-declaration", buffer = ev.buf, silent = true })
	vim.keymap.set(
		"n",
		"gd",
		"<cmd>Telescope lsp_definitions<CR>",
		{ desc = "goto-definitions", buffer = ev.buf, silent = true }
	)
	vim.keymap.set(
		"n",
		"gi",
		"<cmd>Telescope lsp_implementations<CR>",
		{ desc = "goto-implementations", buffer = ev.buf, silent = true }
	)
	vim.keymap.set(
		"n",
		"gt",
		"<cmd>Telescope lsp_type_definitions<CR>",
		{ desc = "goto-type-definitions", buffer = ev.buf, silent = true }
	)
	vim.keymap.set(
		"n",
		"<leader>fd",
		"<cmd>Telescope diagnostics bufnr=0<CR>",
		{ desc = "find-buffer-diagnostics", buffer = ev.buf, silent = true }
	)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "show-documentation", buffer = ev.buf, silent = true })
end
