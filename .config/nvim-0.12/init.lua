-- filepath ~/.config/nvim/init.lua
-- written by Eric Nantel

-- setting options
vim.opt.path:append("**")
vim.opt.isfname:append("@-@")
vim.opt.syntax = on
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.numberwidth = 2
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.scrolloff = 5
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.updatetime = 300
vim.opt.timeout = true
vim.opt.timeoutlen = 300
vim.opt.history = 20
vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.inccommand = "split"
vim.opt.spell = false
vim.opt.wrap = false
vim.opt.linebreak = false
vim.opt.showmatch = false
vim.opt.list = false
vim.opt.ruler = false
vim.opt.title = false
vim.opt.cursorline = false
vim.opt.cursorcolumn = false
vim.opt.mouse = "a"
-- vim.opt.guicursor = ""
vim.env.LANG = "fr_CA.UTF-8"
vim.opt.encoding = "utf-8"
vim.opt.backspace = "indent,eol,start"
vim.opt.clipboard:append("unnamedplus")
vim.opt.undodir = vim.fn.stdpath("config") .. "/undodir-nvim"
vim.opt.undofile = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.wildmenu = true

-- setting yank highlight
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 200,
		})
	end,
})

-- setting core keymaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>")
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("v", "jk", "<ESC>")
vim.keymap.set("i", "<C-c>", "<ESC>")
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "+", "<C-a>", { remap = false })
vim.keymap.set("n", "-", "<C-x", { remap = false })
-- vim.keymap.set("n", "J", "mzJ`z", { remap = false })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { remap = false })
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", { remap = false })
vim.keymap.set("v", "<", "<gv", { remap = false })
vim.keymap.set("v", ">", ">gv", { remap = false })
if vim.env.LANG == "fr_CA.UTF-8" then
	vim.keymap.set("n", "|", "*", { remap = false })
	vim.keymap.set("v", "|", "*", { remap = false })
	vim.keymap.set("n", "«", "<cmd>cnext<CR>", { remap = false })
	vim.keymap.set("n", "»", "<cmd>cprevious<CR>", { remap = false })
	vim.keymap.set("", "¨", "iB", { remap = true })
	vim.keymap.set("", "¸", "$", { remap = true })
	vim.keymap.set("", "<C-p>", "%", { remap = true })
end

-- setting plugin list
vim.pack.add({
	{
		src = "https://github.com/christoomey/vim-tmux-navigator",
	},
	{
		src = "https://github.com/szw/vim-maximizer",
	},
	{
		src = "https://github.com/kshenoy/vim-signature",
	},
	{
		src = "https://github.com/tpope/vim-commentary",
	},
	{
		src = "https://github.com/tpope/vim-fugitive",
	},
	{
		src = "https://github.com/airblade/vim-gitgutter",
	},
	{
		src = "https://github.com/stykhomyrov/vim-glsl",
	},
	{
		src = "https://github.com/beyondmarc/hlsl.vim",
	},
	{
		src = "https://github.com/ericnantel/vim-cmake",
	},
	{
		src = "https://github.com/samsaga2/vim-z80",
	},
	{
		src = "https://github.com/ericnantel/vim-z80-docs",
	},
	{
		src = "https://github.com/doums/darcula",
	},
	{
		src = "https://github.com/nvim-lua/plenary.nvim",
	},
	{
		src = "https://github.com/folke/which-key.nvim",
	},
	{
		src = "https://github.com/folke/todo-comments.nvim",
	},
	{
		src = "https://github.com/windwp/nvim-autopairs",
		event = { "InsertEnter" },
	},
	{
		src = "https://github.com/windwp/nvim-ts-autotag",
		event = { "BufReadPre", "BufNewFile" },
	},
	{
		src = "https://github.com/nvim-mini/mini.nvim",
	},
	{
		src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	},
	{
		src = "https://github.com/nvim-telescope/telescope.nvim",
	},
	{
		src = "https://github.com/stevearc/oil.nvim",
	},
	{
		src = "https://github.com/nvim-tree/nvim-web-devicons",
	},
	{
		src = "https://github.com/nvim-lualine/lualine.nvim",
	},
	{
		src = "https://github.com/rose-pine/neovim",
		name = "rose-pine",
	},
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter-context",
	},
	{
		src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("^1"),
		event = { "InsertEnter" },
	},
	{
		src = "https://github.com/stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},
	{
		src = "https://github.com/mason-org/mason.nvim",
	},
	{
		src = "https://github.com/mason-org/mason-lspconfig.nvim",
	},
	{
		src = "https://github.com/neovim/nvim-lspconfig",
	},
	-- bufferline
	-- ccc
})

-- setting plugin tmux-navigator
vim.g.tmux_navigator_no_mappings = 1
vim.g.tmux_navigator_save_on_switch = 0
vim.g.tmux_navigator_no_wrap = 1
vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { silent = true })

-- setting plugin vim-maximizer
vim.g.maximizer_set_default_mapping = 1
vim.keymap.set("n", "<leader>sm", "<cmd>MaximizerToggle<CR>", {
	remap = false,
	desc = "Maximize/Minimize Split Window",
})

-- setting plugin vim-signature
vim.g.SignatureWrapJumps = 1
vim.g.SignatureMarkTextHLDynamic = 1
if vim.env.LANG == "fr_CA.UTF-8" then
	vim.keymap.set("n", "é", "]`", { remap = true, silent = true })
	vim.keymap.set("n", "É", "[`", { remap = true, silent = true })
end

-- setting plugin vim-commentary
vim.cmd([[autocmd FileType z80 setlocal commentstring=;\ %s]])
vim.cmd([[autocmd FileType glsl setlocal commentstring=//\ %s]])
vim.cmd([[autocmd FileType hlsl setlocal commentstring=//\ %s]])
vim.cmd([[autocmd FileType lisp setlocal commentstring=;;\ %s]])
vim.keymap.set("n", "z", "gc", { remap = true, silent = true })
vim.keymap.set("n", "zz", "gcc", { remap = true, silent = true })
vim.keymap.set("v", "z", "gc", { remap = true, silent = true })

-- setting plugin vim-fugitive

-- setting plugin vim-gitgutter
vim.g.gitgutter_enabled = 1
vim.g.gitgutter_signs = 1
vim.g.gitgutter_async = 1

-- setting plugin vim-cmake
vim.g.cmake_bear_intercept = 0
-- TODO: Complete keymaps

-- setting plugin vim-z80
vim.cmd([[autocmd BufNewFile,BufRead *.z80.asm set filetype=z80]])

-- setting plugin vim-z80-docs

-- setting plugin which-key
local plugin_whichkey = require("which-key")
plugin_whichkey.setup()

-- setting plugin todo-comments
local plugin_todo = require("todo-comments")
plugin_todo.setup()

-- setting plugin nvim-autopairs
local plugin_autopairs = require("nvim-autopairs")
plugin_autopairs.setup({
	disable_filetype = {
		"TelescopePrompt",
		"vim",
	},
	enable_afterquote = false,
	check_ts = true,
	ts_config = {
		lua = { "string" },
		javascript = { "template_string" },
		java = false,
	},
	-- NOTE: There is an issue when you paste code
	-- in Javascript that it moves the {}
	-- even though formatting is disabled
	-- could it be linked to map_cr ?
	map_cr = true,
	map_bs = true,
})

-- TODO: mini.surround ?

-- setting plugin mini.notify
local plugin_mininotify = require("mini.notify")
plugin_mininotify.setup({
	-- only show messages
	content = {
		format = function(notif)
			return notif.msg
		end,
	},
	window = {
		config = function()
			return {
				title = "",
				anchor = "SE",
				row = vim.o.lines - 2,
				col = vim.o.columns,
				border = "rounded",
			}
		end,
	},
})

-- setting plugin telescope
local plugin_telescope = require("telescope")
local telescope_actions = require("telescope.actions")
plugin_telescope.setup({
	defaults = {
		layout_strategy = "horizontal",
		layout_config = {
			anchor = "N",
			height = 0.85,
			mirror = true,
			preview_width = 0.45,
			prompt_position = "top",
			width = 0.85,
		},
		sorting_strategy = "ascending",
		path_display = {
			"truncate",
		},
		mappings = {
			i = {
				["<C-j>"] = telescope_actions.move_selection_next,
				["<C-k>"] = telescope_actions.move_selection_previous,
				["<TAB>"] = telescope_actions.toggle_selection,
				["<C-s>"] = telescope_actions.toggle_selection,
				["<C-q>"] = telescope_actions.smart_send_to_qflist + telescope_actions.open_qflist,
			},
		},
		preview = {
			treesitter = true,
		},
		color_devicons = true,
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
	extensions = {
		wrap_results = true,
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})
pcall(plugin_telescope.load_extension, "fzf")
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {
	desc = "Telescope Find Files",
})
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", {
	desc = "Telescope Grep String",
})
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", {
	desc = "Telescope Grep Word",
})
-- TODO: Complete.

-- setting plugin oil
local plugin_oil = require("oil")
plugin_oil.setup()
vim.keymap.set("n", "<leader>ee", "<cmd>Oil --float<CR>", {
	desc = "Open parent directory",
})

-- setting plugin lualine
local plugin_lualine = require("lualine")
plugin_lualine.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = "",
		section_separators = "",
		disabled_filetypes = {
			"alpha",
		},
	},
	sections = {
		lualine_a = {
			"mode",
		},
		lualine_b = {
			"branch",
			"diff",
			"diagnostics",
		},
		lualine_c = {
			"filename",
		},
		lualine_x = {
			-- lazy
		},
		lualine_y = {
			"filetype",
			"encoding",
			"fileformat",
			-- datetime
		},
		lualine_z = {
			"progress",
			"location",
		},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {
			"filename",
		},
		lualine_x = {},
		lualine_y = {
			"filetype",
			"encoding",
			"fileformat",
		},
		lualine_z = {
			"progress",
			"location",
		},
	},
	extensions = {
		"fugitive",
		-- lazy
		"mason",
		-- nerdtree
		-- nvim-tree
		"oil",
		-- trouble
	},
})

-- setting colorscheme
local pseudo_terminal = false
local tty = os.getenv("TTY")
local colorterm = os.getenv("COLORTERM")
if vim.loop.os_uname().sysname == "Windows" then
	pseudo_terminal = true
else
	if vim.fn.stridx(tty, "/dev/pts") >= 0 or vim.fn.stridx(tty, "/dev/ttys") >= 0 then
		pseudo_terminal = true
	end
end
if pseudo_terminal then
	vim.opt.background = "dark"
	if colorterm == "truecolor" then
		local plugin_rosepine = require("rose-pine")
		plugin_rosepine.setup({
			variant = "moon",
		})
		vim.opt.termguicolors = true
		-- vim.cmd.colorscheme("darcula")
		vim.cmd.colorscheme("rose-pine")
	else
		-- NOTE: Default 256 colors colorscheme
		vim.cmd.colorscheme("darcula")
	end
end

-- setting diagnostics
local diagnostic_signs = {
	[vim.diagnostic.severity.ERROR] = "☒",
	[vim.diagnostic.severity.WARN] = "⚠",
	[vim.diagnostic.severity.HINT] = "⚡",
	[vim.diagnostic.severity.INFO] = "ⓘ",
}
vim.diagnostic.config({
	signs = { text = diagnostic_signs },
	virtual_text = true,
	underline = true,
	update_in_insert = false,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = true,
	},
})

-- setting treesitter & treesitter-context
-- TODO: brew install tree-sitter-cli
-- NOTE: Some parsers are already supported by Neovim such as lua or vimscript
local plugin_ts = require("nvim-treesitter")
plugin_ts.setup({
	install_dir = vim.fn.stdpath("data") .. "/site",
})
plugin_ts.install({
	"c",
	"cpp",
	"javascript",
	"typescript",
	"tsx",
})
local plugin_tscontext = require("treesitter-context")
plugin_tscontext.setup({
	enable = true,
	max_lines = 2,
})

-- setting completion (lsp & cmdline)
local plugin_blinkcmp = require("blink.cmp")
plugin_blinkcmp.setup({
	keymap = {
		["<Tab>"] = { "select_and_accept", "accept" },
		["<C-j>"] = { "select_next", "fallback_to_mappings" },
		["<C-k>"] = { "select_prev", "fallback_to_mappings" },
		-- TODO: scroll documentation use PgUp, PgDown ?
	},
	-- appearance = {
	-- 	nerd_font_variant = "mono",
	-- 	use_nvim_cmp_as_default = true,
	-- },
	completion = {
		menu = {
			auto_show = true,
		},
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 600,
		},
		ghost_text = {
			enabled = false,
			show_with_menu = false,
		},
		accept = {
			auto_brackets = {
				enabled = true,
			},
		},
	},
	cmdline = {
		enabled = false, -- NOTE: Currently disabled because :w and :q defaults to :wall and :qall !
		keymap = {
			["<Tab>"] = { "show", "accept" },
			["<C-j>"] = { "select_next", "fallback" },
			["<C-k>"] = { "select_prev", "fallback" },
			["<CR>"] = { "accept_and_enter", "fallback" },
		},
		completion = {
			menu = {
				auto_show = true,
			},
		},
	},
	sources = {
		default = {
			"lsp",
			"path",
			"snippets",
			"buffer",
		},
	},
	snippets = {
		preset = "default",
	},
	signature = {
		enabled = true,
	},
	fuzzy = {
		implementation = "prefer_rust",
		prebuilt_binaries = {
			download = true, -- TODO: Perhaps we should build it ourselves..
		},
	},
})

-- setting formatters
-- NOTE: brew install clang-format
local plugin_conform = require("conform")
plugin_conform.setup({
	formatters_by_ft = {
		c = { "clang-format" },
		cpp = { "clang-format" },
		--javascript, typescript, javascriptreact, typescriptreact
		lua = { "stylua" },
		-- python
		-- yaml
	},
	format_on_save = {
		lsp_format = "never",
		async = false,
		timeout_ms = 500,
	},
	log_level = vim.log.levels.INFO,
	formatters = {
		["clang-format"] = {
			-- TODO: Verify path on MacOS
			prepend_args = { "-fallback-style=none" },
		},
	},
})

-- TODO: linter, debugger-adapter

-- setting mason & mason-lspconfig
-- NOTE: Mainly to install some language servers such as typescript-language-server
local plugin_mason = require("mason")
plugin_mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "→",
			package_uninstalled = "𐄂",
		},
	},
})
local plugin_masonlspconfig = require("mason-lspconfig")
plugin_masonlspconfig.setup({
	ensure_installed = {
		"ts_ls",
		"vimls",
	},
})

-- setting lsp
-- NOTE: brew install clangd or llvm, lua-language-server, typescript, typescript-language-server
-- NOTE: blink.cmp get_lsp_capabilities() includes builtin LSP capabilities by default
local capabilities = vim.lsp.protocol.make_client_capabilities()
plugin_blinkcmp.get_lsp_capabilities(capabilities)
vim.lsp.config("*", {
	capabilities = capabilities,
})
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			completion = {
				callSnippet = "Replace",
			},
		},
	},
})
vim.lsp.enable({
	"clangd",
	"lua_ls",
	"ts_ls",
	"vimls",
})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {
	silent = true,
	desc = "Show Documentation",
})
vim.keymap.set("n", "grr", vim.lsp.buf.references, {
	silent = true,
	desc = "LSP References - QuickFix",
})
vim.keymap.set("n", "grn", vim.lsp.buf.rename, {
	silent = true,
	desc = "LSP Rename - QuickFix",
})
vim.keymap.set("n", "gri", vim.lsp.buf.implementation, {
	silent = true,
	desc = "LSP Implementation - QuickFix",
})
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {
	silent = true,
	desc = "LSP Goto Declaration",
})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
	silent = true,
	desc = "LSP Goto Definition",
})
vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {
	silent = true,
	desc = "LSP Goto Type Definition",
})
