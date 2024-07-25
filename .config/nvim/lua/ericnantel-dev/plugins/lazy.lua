local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	vim.fn.system ({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	spec = {
		-- plenary
		-- all the lua functions I don't want to write twice
		{
			"nvim-lua/plenary.nvim",
		},
		-- nvim-web-devicons
		-- lua 'fork' of vim-web-devicons for neovim
		{
			"nvim-tree/nvim-web-devicons",
			lazy = true,
		},
		-- vim-maximizer
		-- maximizes and restores the current window in vim
		{
			"szw/vim-maximizer",
		},
		-- Tmux Navigator
		-- seamless navigation between tmux panes and vim splits
		{
			"christoomey/vim-tmux-navigator",
		},
		-- vim-commentary
		-- comment stuff out
		{
			"tpope/vim-commentary",
		},
		-- vim-fugitive
		-- a git wrapper so awesome, it should be illegal
		{
			"tpope/vim-fugitive",
		},
		-- vim-markdown
		-- markdown vim mode
		{
			"preservim/vim-markdown",
		},
		-- TODO: markdown preview
		--
		-- vim-gitgutter
		-- a vim plugin which shows git diff markers in the sign column
		{
			"airblade/vim-gitgutter",
		},
		-- vim-z80
		-- Vim syntax for Z80 Assembler
		{
			"samsaga2/vim-z80",
		},
		-- which-key
		-- lua plugin for Neovim 0.5 that displays a pop with possible keybindings
		{
			"folke/which-key.nvim",
			lazy = true,
			opts = {}
		},
		-- dressing
		-- Neovim plugin to improve the default vim.ui interfaces
		{
			"stevearc/dressing.nvim",
			event = "VeryLazy",
			opts = {}
		},
		-- todo-comments
		-- highlight, list and search todo comments in your projects
		{
			"folke/todo-comments.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim"
			},
			opts = {},
		},
		-- trouble
		--
		{
			"folke/trouble.nvim",
			branch = "main",
			tag = "v2.10.0",
			dependencies = {
				"nvim-tree/nvim-web-devicons",
				"folke/todo-comments.nvim",
			},
			opts = {},
		},
		-- nvim-autopairs
		--
		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = function()
				local nvimautopairs = require 'nvim-autopairs'
				nvimautopairs.setup({
					disable_filetype = {
						'TelescopePrompt',
						'vim',
					},
					check_ts = true,
					ts_config = {
						lua = { 'string' },
						javascript = { 'template_string' },
						java = false,
					},
					map_cr = true,
					map_bs = true,
				})
			end,
		},
		-- alpha
		--
		{
			"goolord/alpha-nvim",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-tree/nvim-web-devicons",
			},
			config = function()
				local alpha = require 'alpha'
				local startify = require 'alpha.themes.startify'
				alpha.setup(startify.config)
			end,
		},
		-- nvim-tree
		--
		{
			"nvim-tree/nvim-tree.lua",
			lazy = false,
			dependencies = {
				"nvim-tree/nvim-web-devicons",
			},
			config = function()
				local nvimtree = require 'nvim-tree'
				nvimtree.setup({
					view = {
						side = "right",
						width = 38,
						number = false,
						relativenumber = true,
						signcolumn = "yes",
					},
					git = {
						enable = true,
					},
					filters = {
						enable = true,
						git_ignored = true,
					},
					-- TODO: filesystem_watchers.ignore_dirs
				})
			end,
		},
		-- nvim-treesitter
		--
		{
			"nvim-treesitter/nvim-treesitter",
			-- event = { "BufReadPre", "BufNewFile" },
			build = ":TSUpdate",
			config = function()
				local nvimtreesitter = require 'nvim-treesitter.configs'
				nvimtreesitter.setup({
					ensure_installed = {
						'c', 'cpp',
						'javascript', 'typescript', 'tsx',
						-- 'c_sharp', 'java',
						'rust', 'go',
						'lua', 'python',
						'json', 'yaml', 'toml',
						'vim', 'vimdoc', 'cmake', 'bash', 'dockerfile',
						'git_config', 'git_rebase',
						'gitattributes', 'gitcommit', 'gitignore',
						'tmux',
					},
					sync_install = false,
					auto_install = true,
					ignore_install = {
						'markdown', 'markdown_inline'
					},
					highlight = {
						enable = true,
						additional_vim_regex_highlighting = false,
					},
				})
			end,
		},
		-- nvim-telescope
		--
		{
			"nvim-telescope/telescope.nvim",
			branch = "0.1.x",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-tree/nvim-web-devicons",
				{
					"nvim-telescope/telescope-fzf-native.nvim",
					build = "make"
				},
				"nvim-telescope/telescope-smart-history.nvim",
				"nvim-telescope/telescope-ui-select.nvim",
				-- "kkharji/sqlite.lua",
			},
			config = function()
				local data = assert(vim.fn.stdpath("data"))
				local history_path = vim.fs.joinpath(data, "telescope_history.sqlite3")
				local telescope = require 'telescope'
				local themes = require 'telescope.themes'
				local builtin = require 'telescope.builtin'
				local actions = require 'telescope.actions'
				local utils = require 'telescope.utils'
				telescope.setup({
					defaults = {
						layout_strategy = 'horizontal',
						layout_config = {
							anchor = 'N',
							height = 0.75,
							mirror = true,
							preview_width = 0.50,
							prompt_position = 'top',
							width = 0.75,
						},
						sorting_strategy = 'ascending',
						file_ignore_patterns = {
							'.git', '.hg', '.svn',
							'%.o', '%.obj', '%.fbx', '%.FBX', '%.ttf','%.mp3', '%.wav', '%.ogg', '%.zip', '%.exe', '%.dll', '%.a', '%.so', '%.pyc',
							'%.ico', '%.tif', '%.bmp', '%.jpg', '%.jpeg', '%.png', '%.tga', '%.psd', '%.svg',
							'%.bak', '%.cache', '%.class', '%.idea', '%.swp', '%.DS_Store', '%.meta',
							--'^node_modules/', '^build/', '^dist/', '^out/',
							'node_modules/.*', 'build/.*', 'dist/.*', 'out/.*',
						},
						path_display = {
							'smart',
						},
						-- mappings = {
						-- 	i = {
						-- 		["<C-k>"] = actions.move_selection_previous,
						-- 		["<C-j>"] = actions.move_selection_next,
						-- 		["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						-- 	},
						-- },
					},
					extensions = {
						wrap_results = true,
						fzf = {},
						history = {
							path = history_path,
							limit = 100,
						},
						['ui-select'] = {
							themes.get_dropdown {},
						},
					},
				})
				pcall(telescope.load_extension, 'fzf')
				pcall(telescope.load_extension, 'smart_history')
				pcall(telescope.load_extension, 'ui-select')
			end,
		},
		-- bufferline
		--
		-- {
		-- 	"akinsho/bufferline.nvim",
		-- 	lazy = false,
		-- 	dependencies = {
		-- 		"nvim-tree/nvim-web-devicons",
		-- 	},
		-- 	opts = {
		-- 		options = {
		-- 			-- mode = "tabs",
		-- 			-- separator_style = "slant",
		-- 		},
		-- 	},
		-- },
		-- lualine
		--
		{
			"nvim-lualine/lualine.nvim",
			lazy = false,
			dependencies = {
				"nvim-tree/nvim-web-devicons",
				"tpope/vim-fugitive",
			},
			config = function()
				local lualine = require 'lualine'
				local lazystatus = require 'lazy.status'
				lualine.setup({
					options = {
						icons_enabled = true,
						theme = 'auto',
						component_separators = '',
						section_separators = '',
						disabled_filetypes = {
							'alpha',
						},
					},
					sections = {
						lualine_a = {
							'mode',
						},
						lualine_b = {
							'branch', 'diff', 'diagnostics',
						},
						lualine_c = {
							'filename',
						},
						lualine_x = {
							{
								lazystatus.updates,
								cond = lazystatus.has_updates,
								color = {
									fg = '#ff9e64'
								},
							},
							'encoding', 'fileformat', 'filetype',
						},
						lualine_y = {
							{
								'datetime',
								style = '%a %H:%M',
							},
						},
						lualine_z = {
							'progress', 'location',
						},
					},
					inactive_sections = {
						lualine_a = {},
						lualine_b = {},
						lualine_c = {
							'filename',
						},
						lualine_x = {
							'location',
						},
						lualine_y = {},
						lualine_z = {},
					},
					extensions = {
						'fugitive',
						'lazy',
						-- 'mason',
						-- 'nerdtree',
						'nvim-tree',
						-- 'oil',
						'trouble',
					},
				})
			end,
		},
		-- catppuccin
		--
		{
			"catppuccin/nvim",
			name = "catppuccin",
			lazy = true,
			config = function()
				local catppuccin = require 'catppuccin'
				catppuccin.setup({
					flavour = 'auto',
					background = {
						light = 'latte',
						dark = 'mocha',
					},
					integrations = {
						alpha = true,
						-- cmp = true,
						-- harpoon = true,
						gitgutter = true,
						-- mason = true,
						nvimtree = true,
						telescope = true,
						treesitter = true,
						which_key = true,
					},
				})
			end,
		},
		-- eva01
		--
		{
			"hachy/eva01.vim",
			lazy = true,
		},
		-- night-owl
		--
		{
			"oxfist/night-owl.nvim",
			lazy = true,
			config = function()
				local nightowl = require 'night-owl'
				nightowl.setup()
			end,
		},
		-- oxocarbon
		--
		{
			"nyoom-engineering/oxocarbon.nvim",
			lazy = true,
		},
		-- ccc
		--
		{
			"uga-rosa/ccc.nvim",
			config = function()
				local ccc = require 'ccc'
				ccc.setup({
					highlighter = {
						auto_enable = true,
						lsp = true,
					},
				})
			end,
		},
	},
	defaults = {
		lazy = false,
	},
	git = {
		log = { '-6' },
	},
	dev = {
		fallback = false,
	},
	install = {
		missing = true,
		colorscheme = { 'darcula' },
	},
	ui = {
		size = {
			width = 0.75,
			height = 0.75,
		},
		title_pos = 'center',
	},
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
	performance = {
		cache = {
			enabled = true,
		},
	},
})
