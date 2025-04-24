local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")
lazy.setup({
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
		-- vim-glsl
		-- Vim syntax highlighting for GLSL
		{
			"tikhomirov/vim-glsl",
		},
		-- vim-gitgutter
		-- a vim plugin which shows git diff markers in the sign column
		{
			"airblade/vim-gitgutter",
		},
		-- vim-signature
		-- a vim plugin to toggle, display & navigate marks
		{
			"kshenoy/vim-signature",
		},
		-- vim-z80
		-- Vim syntax for Z80 Assembler
		{
			"samsaga2/vim-z80",
		},
		-- vim-z80-docs
		-- Vim docs for Z80 Assembly Programming
		{
			"ericnantel/vim-z80-docs",
		},
		-- which-key
		-- lua plugin for Neovim 0.5 that displays a pop with possible keybindings
		{
			"folke/which-key.nvim",
			event = "VeryLazy",
			opts = {},
		},
		-- dressing
		-- Neovim plugin to improve the default vim.ui interfaces
		{
			"stevearc/dressing.nvim",
			event = "VeryLazy",
			opts = {},
		},
		-- todo-comments
		-- highlight, list and search todo comments in your projects
		{
			"folke/todo-comments.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim",
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
		-- harpoon
		-- Bookmarks plugin
		{
			"ThePrimeagen/harpoon",
			branch = "harpoon2",
			dependencies = {
				"nvim-lua/plenary.nvim",
			},
			config = function()
				local harpoon = require("harpoon")
				harpoon:setup()
			end,
		},
		-- orgmode
		-- Neovim Orgmode clone
		{
			"nvim-orgmode/orgmode",
			-- version = "*", -- On Linux, nvim might not be version 10
			branch = "master",
			tag = "0.3.61",
			event = "VeryLazy",
			--build = ":Org blabla",
			dependencies = {
				--	"nvim-telescope/telescope.nvim",
				--	"nvim-orgmode/telescope-orgmode.nvim", -- NOTE: Perhaps we should add this dependency to telescope instead ..
				"nvim-orgmode/org-bullets.nvim", -- NOTE: Requires treesitter org installed
				--	"Saghen/blink.cmp", -- NOTE: No need we use nvim-cmp
			},
			ft = "org", -- Optional ?
			config = function()
				local org = require("orgmode")
				-- org.setup_ts_grammar() TODO: Verify if needed
				org.setup({
					-- TODO: org_agenda_custom_commands
					org_agenda_files = {
						-- "~/org/*",
						-- "~/Notes/orgfiles/**/*",
						"~/Notes/orgfiles/personal.org",
						"~/Notes/orgfiles/work.org",
						"~/Notes/orgfiles/school.org",
						"~/Notes/orgfiles/diary.org",
						-- What about roam files ?
					},
					org_deadline_warning_days = 7,
					-- org_agenda_include_diary = false, -- NOTE: Because we are including calendar holidays in diary.org
					org_agenda_span = "week",
					org_agenda_start_on_weekday = false,
					org_agenda_start_day = "-1d",
					-- org_agenda_custom_commands ..
					-- org_agenda_window_setup = "only-window" ..

					org_archive_location = "~/Notes/orgfiles/archive/" .. "%s_archive",

					org_capture_templates = {
						t = {
							description = "Refile",
							-- target is default notes file
							-- headline = "Tasks", -- NOTE: doesn't work properly in this version
							datetree = false,
							template = "* TODO %?\n %U\n",
							properties = {
								empty_lines = 1,
							},
						},
						p = {
							description = "Personal",
							target = "~/Notes/orgfiles/personal.org",
							datetree = false,
							template = "* TODO %?\n %U\n",
							properties = {
								empty_lines = 1,
							},
						},
						w = {
							description = "Work",
							target = "~/Notes/orgfiles/work.org",
							datetree = false,
							template = "* TODO %?\n %U\n",
							properties = {
								empty_lines = 1,
							},
						},
						s = {
							description = "School",
							target = "~/Notes/orgfiles/school.org",
							datetree = false,
							template = "* TODO %?\n %U\n",
							properties = {
								empty_lines = 1,
							},
						},
					},

					org_default_notes_file = "~/Notes/orgfiles/refile.org",

					org_ellipsis = " ▼",

					org_hide_emphasis_markers = true,

					org_log_done = "time",
					org_log_into_drawer = "LOGBOOK",

					org_startup_indented = true, -- NOTE: Only enabled for Neovim 0.10+
				})

				local orgbullets = require("org-bullets")
				orgbullets.setup({
					concealcursor = true,
					--symbols = {
					--	checkboxes = {},
					--},
				})

				-- NOTE: What about org-mobile (push/pop) ?
			end,
		},

		-- org-roam ?

		-- neorg
		-- Neovim organization
		-- {
		-- 	"nvim-neorg/neorg",
		-- 	lazy = false,
		-- 	-- version = "*", -- On Linux, nvim might not be version 10
		-- 	branch = "main",
		-- 	tag = "v8.9.0",
		-- 	cmd = "Neorg", -- Optional ?
		-- 	ft = "norg", -- Optional ?
		-- 	build = ":Neorg sync-parsers",
		-- 	dependencies = {
		-- 		"nvim-lua/plenary.nvim",
		-- 	},
		-- 	config = function()
		-- 		local neorg = require("neorg")
		-- 		neorg.setup({
		-- 			load = {
		-- 				-- Default modules
		-- 				["core.journal"] = {
		-- 					config = {
		-- 						journal_folder = "journal",
		-- 						strategy = "flat",
		-- 						use_template = false,
		-- 						workspace = nil, -- "notes",
		-- 					},
		-- 				},
		-- 				-- Other modules
		-- 				["core.completion"] = {
		-- 					config = {
		-- 						engine = "nvim-cmp",
		-- 					},
		-- 				},
		-- 				["core.concealer"] = {
		-- 					-- config = {
		-- 					-- 	icons = {},
		-- 					-- },
		-- 				},
		-- 				["core.dirman"] = {
		-- 					config = {
		-- 						workspaces = {
		-- 							-- NOTE: Perhaps I have notes in other formats, so that is why
		-- 							notes = "~/Notes/neorg/personal",
		-- 							work = "~/Notes/neorg/work",
		-- 						},
		-- 						default_workspace = "notes",
		-- 						index = "index.norg",
		-- 					},
		-- 				},
		-- 				["core.export.markdown"] = {
		-- 					config = {
		-- 						extension = "md",
		-- 					},
		-- 				},
		-- 				["core.summary"] = {
		-- 					-- config = {},
		-- 				},
		-- 				-- Developer modules
		-- 				["core.defaults"] = {
		-- 					-- config = {},
		-- 				},
		-- 			},
		-- 		})
		-- 	end,
		-- },
		-- screenkey
		-- Screencast your keys in Neovim
		{
			"NStefan002/screenkey.nvim",
			lazy = true,
			version = "*",
			config = function()
				local screenkey = require("screenkey")
				screenkey.setup({
					win_opts = {
						row = vim.o.lines - vim.o.cmdheight - 1,
						col = vim.o.columns - 1,
						relative = "editor",
						anchor = "SE",
						width = 24,
						height = 1,
						border = "single",
						title = "Screenkey",
						title_pos = "center",
						style = "minimal",
						focusable = false,
						noautocmd = true,
					},
					compress_after = 3,
					clear_after = 3,
					disable = {
						filetypes = {},
						buftypes = {},
						events = false,
					},
					show_leader = true,
					group_mappings = true,
					display_infront = {},
					display_behind = {},
					-- filter = function(keys)
					-- 	return keys
					-- end,
					-- keys = {},
				})

				vim.api.nvim_create_autocmd({ "VimEnter" }, {
					group = vim.api.nvim_create_augroup("AutostartScreenkey", {}),
					command = "Screenkey toggle",
					desc = "Autostart Screenkey on VimEnter",
				})
			end,
		},
		-- nvim-autopairs
		--
		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = function()
				local nvimautopairs = require("nvim-autopairs")
				-- TODO: local nvimautopairs_completion = require("nvim-autopairs.completion")
				nvimautopairs.setup({
					disable_filetype = {
						"TelescopePrompt",
						"vim",
					},
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
			end,
		},
		-- nvim-ts-autotag
		--
		{
			"windwp/nvim-ts-autotag",
			event = { "BufReadPre", "BufNewFile" },
			opts = {},
		},
		-- alpha
		--
		-- {
		-- 	"goolord/alpha-nvim",
		-- 	dependencies = {
		-- 		"nvim-lua/plenary.nvim",
		-- 		"nvim-tree/nvim-web-devicons",
		-- 	},
		-- 	config = function()
		-- 		local alpha = require("alpha")
		-- 		local startify = require("alpha.themes.startify")
		-- 		alpha.setup(startify.config)
		-- 	end,
		-- },
		-- nvim-tree
		--
		{
			"nvim-tree/nvim-tree.lua",
			lazy = false,
			dependencies = {
				"nvim-tree/nvim-web-devicons",
			},
			config = function()
				local nvimtree = require("nvim-tree")
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
					actions = {
						open_file = {
							quit_on_open = true,
						},
					},
				})
			end,
		},
		-- nvim-treesitter
		--
		{
			"nvim-treesitter/nvim-treesitter",
			branch = "master",
			tag = "v0.9.3",
			event = { "BufReadPre", "BufNewFile" },
			build = ":TSUpdate",
			dependencies = {
				{
					"nvim-treesitter/nvim-treesitter-context",
					opts = {},
				},
				-- TODO: ufo (folding)
				"HiPhish/rainbow-delimiters.nvim",
			},
			config = function()
				local nvimtreesitter = require("nvim-treesitter.configs")
				nvimtreesitter.setup({
					ensure_installed = {
						"c",
						"cpp",
						"javascript",
						"typescript",
						"tsx",
						-- 'c_sharp', 'java',
						"rust",
						"go",
						"lua",
						"python",
						"json",
						"yaml",
						"toml",
						"vim",
						"vimdoc",
						"cmake",
						"bash",
						"dockerfile",
						"git_config",
						"git_rebase",
						"gitattributes",
						"gitcommit",
						"gitignore",
						"tmux",
						-- "norg",
						-- "norg_meta",
					},
					sync_install = false,
					auto_install = true,
					ignore_install = {
						"glsl",
						"markdown",
						"markdown_inline",
						"org",
					},
					highlight = {
						enable = true,
						-- disable = {
						-- 	"glsl",
						-- 	"markdown",
						-- 	"markdown_inline",
						-- },
						disable = function(lang, buf)
							if lang == "glsl" then
								return true
							elseif lang == "markdown" then
								return true
							elseif lang == "markdown_inline" then
								return true
							end
							local max_filesize = 100 * 1024 -- 100Kb
							local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
							if ok and stats and stats.size > max_filesize then
								return true
							end
						end,
						additional_vim_regex_highlighting = false,
					},
				})

				local nvimtreesittercontext = require("treesitter-context")
				nvimtreesittercontext.setup({
					enable = true,
					max_lines = 5,
					min_window_height = 0,
					line_numbers = true,
					multiline_threshold = 20,
					trim_scope = "outer",
					mode = "cursor",
					separator = nil,
					zindex = 20,
					on_attach = nil,
				})

				local rainbowdelimiters = require("rainbow-delimiters.setup")
				rainbowdelimiters.setup({
					blacklist = {
						"c",
						"cpp",
					},
				})
			end,
		},
		-- telescope
		--
		{
			"nvim-telescope/telescope.nvim",
			branch = "0.1.x",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-tree/nvim-web-devicons",
				{
					"nvim-telescope/telescope-fzf-native.nvim",
					build = "make",
				},
				"nvim-telescope/telescope-smart-history.nvim",
				"nvim-telescope/telescope-ui-select.nvim",
				-- "kkharji/sqlite.lua",
			},
			config = function()
				local data = vim.fn.stdpath("data")
				local history_path = data .. "/telescope_history.sqlite3"
				local telescope = require("telescope")
				local themes = require("telescope.themes")
				local builtin = require("telescope.builtin")
				local actions = require("telescope.actions")
				local utils = require("telescope.utils")
				telescope.setup({
					defaults = {
						layout_strategy = "horizontal",
						layout_config = {
							anchor = "N",
							height = 0.85,
							mirror = true,
							preview_width = 0.55,
							prompt_position = "top",
							width = 0.85,
						},
						sorting_strategy = "ascending",
						path_display = {
							-- "smart",
							"truncate",
						},
						-- mappings = {
						-- 	i = {
						-- 		["<C-k>"] = actions.move_selection_previous,
						-- 		["<C-j>"] = actions.move_selection_next,
						-- 		["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						-- 	},
						-- },
						preview = {
							treesitter = true,
						},
						color_devicons = true,
						file_ignore_patterns = {
							".git",
							--".hg",
							--".svn",
							--"%.o",
							--"%.obj",
							--"%.fbx",
							--"%.FBX",
							--"%.ttf",
							--"%.mp3",
							--"%.wav",
							--"%.ogg",
							--"%.zip",
							--"%.exe",
							--"%.dll",
							--"%.a",
							--"%.so",
							--"%.pyc",
							--"%.ico",
							--"%.tif",
							--"%.bmp",
							--"%.jpg",
							--"%.jpeg",
							--"%.png",
							--"%.tga",
							--"%.psd",
							--"%.svg",
							--"%.bak",
							--"%.cache",
							--"%.class",
							--"%.idea",
							--"%.swp",
							--"%.DS_Store",
							--"%.meta",
							-- --'^node_modules/', '^build/', '^dist/', '^out/',
							--"node_modules/.*",
							--"build/.*",
							--"dist/.*",
							--"out/.*",
						},
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
						history = {
							path = history_path,
							limit = 100,
						},
						["ui-select"] = {
							themes.get_dropdown({}),
						},
					},
				})
				pcall(telescope.load_extension, "fzf")
				pcall(telescope.load_extension, "smart_history")
				pcall(telescope.load_extension, "ui-select")
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
				local lualine = require("lualine")
				local lazystatus = require("lazy.status")
				lualine.setup({
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
							{
								lazystatus.updates,
								cond = lazystatus.has_updates,
								color = {
									fg = "#ff9e64",
								},
							},
							"encoding",
							"fileformat",
							"filetype",
						},
						lualine_y = {
							{
								"datetime",
								style = "%a %H:%M",
							},
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
						lualine_x = {
							"location",
						},
						lualine_y = {},
						lualine_z = {},
					},
					extensions = {
						"fugitive",
						"lazy",
						"mason",
						-- 'nerdtree',
						"nvim-tree",
						-- 'oil',
						"trouble",
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
				local catppuccin = require("catppuccin")
				catppuccin.setup({
					flavour = "auto",
					background = {
						light = "latte",
						dark = "mocha",
					},
					integrations = {
						-- alpha = true,
						cmp = true,
						harpoon = true,
						gitgutter = true,
						mason = true,
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
		-- NOTE: Requires a terminal that supports truecolor (24Bit)
		-- Otherwise, make it lazy and comment priority
		{
			"oxfist/night-owl.nvim",
			lazy = false,
			priority = 1000,
			config = function()
				local nightowl = require("night-owl")
				nightowl.setup()

				vim.cmd.colorscheme("night-owl")
			end,
		},
		-- oxocarbon
		--
		{
			"nyoom-engineering/oxocarbon.nvim",
			lazy = true,
		},
		-- lillilac
		--
		{
			"Love-Pengy/lillilac.nvim",
			lazy = true,
		},
		-- ccc
		--
		{
			"uga-rosa/ccc.nvim",
			branch = "main",
			tag = "v2.0.3",
			config = function()
				local ccc = require("ccc")
				ccc.setup({
					highlighter = {
						auto_enable = true,
						lsp = true,
					},
				})
			end,
		},
		-- lspconfig and mason
		--
		{
			"neovim/nvim-lspconfig",
			branch = "master",
			tag = "v1.8.0",
			event = { "BufReadPre", "BufNewFile" },
			dependencies = {
				"hrsh7th/cmp-nvim-lsp",
				{
					"antosha417/nvim-lsp-file-operations",
					config = true,
				},
				{
					"folke/neodev.nvim",
					opts = {},
				},
				{
					"j-hui/fidget.nvim",
					opts = {},
				},
				"williamboman/mason.nvim",
				"williamboman/mason-lspconfig.nvim",
				"mfussenegger/nvim-dap",
				"jay-babu/mason-nvim-dap.nvim",
				{
					"mfussenegger/nvim-lint",
					event = { "BufReadPre", "BufNewFile" },
				},
				"rshkarin/mason-nvim-lint",
				{
					"stevearc/conform.nvim",
					branch = "nvim-0.9", -- NOTE: Fixing Debian/Ubuntu
					event = { "BufReadPre", "BufNewFile" },
				},
				"zapling/mason-conform.nvim",
				"WhoIsSethDaniel/mason-tool-installer.nvim",
			},
			config = function()
				-- NOTE: Rounded border
				vim.diagnostic.config({
					float = { border = "rounded" },
				})

				local lspconfig = require("lspconfig")
				local cmp_nvim_lsp = require("cmp_nvim_lsp")
				local capabilities = cmp_nvim_lsp.default_capabilities()

				local signs = {
					Error = "☒",
					Warn = "⚠",
					Hint = "⚡",
					Info = "ⓘ",
				}

				for type, icon in pairs(signs) do
					local hl = "DiagnosticSign" .. type
					vim.fn.sign_define(hl, {
						text = icon,
						texthl = hl,
						numhl = "",
					})
				end

				local mason = require("mason")
				local mason_lspconfig = require("mason-lspconfig")

				mason.setup({
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "→",
							package_uninstalled = "𐄂",
						},
					},
				})

				-- TODO: LspAttach local mappings

				mason_lspconfig.setup({
					ensure_installed = {
						"clangd",
						"ts_ls",
						"rust_analyzer", -- TODO: go
						"lua_ls",
						"pyright",
						"yamlls",
						"vimls",
						"glsl_analyzer",
					},
				})
				mason_lspconfig.setup_handlers({
					function(server_name)
						lspconfig[server_name].setup({
							capabilities = capabilities,
						})
					end,
					["lua_ls"] = function()
						lspconfig["lua_ls"].setup({
							capabilities = capabilities,
							settings = {
								Lua = {
									diagnostics = {
										globals = {
											"vim",
										},
									},
									completion = {
										callSnippet = "Replace",
									},
								},
							},
						})
					end,
				})

				local dap = require("dap")
				local mason_nvim_dap = require("mason-nvim-dap")
				mason_nvim_dap.setup({
					ensure_installed = {},
					handlers = {},
				})

				local lint = require("lint")
				lint.linters_by_ft = {
					-- c = { "clangtidy", "cpplint" },
					-- cpp = { "clangtidy", "cpplint" },
					javascript = { "eslint_d" },
					typescript = { "eslint_d" },
					javascriptreact = { "eslint_d" },
					typescriptreact = { "eslint_d" },
					-- TODO: rust, go ?
					-- lua = { "luacheck" },
					python = { "pylint" },
					yaml = { "yamllint" },
					-- glsl = { "glslc" },
				}

				local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
				vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
					group = lint_augroup,
					callback = function()
						lint.try_lint()
					end,
				})

				local mason_nvim_lint = require("mason-nvim-lint")
				mason_nvim_lint.setup({
					ensure_installed = {},
				})

				local conform = require("conform")
				conform.setup({
					formatters_by_ft = {
						c = { "clang-format" },
						cpp = { "clang-format" },
						-- javascript = { "prettierd", "prettier" },
						-- typescript = { "prettier" },
						-- javascriptreact = { "prettier" },
						-- typescriptreact = { "prettier" },
						-- TODO: rust, go ?
						lua = { "stylua" },
						python = { "isort", "black" },
						yaml = { "prettier" },
					},
					format_on_save = {
						lsp_format = "never",
						async = false,
						timeout_ms = 500,
					},
					-- NOTE: Use DEBUG to output cmd w/ args in logfile (:ConformInfo)
					log_level = vim.log.levels.INFO,
					formatters = {
						["clang-format"] = {
							prepend_args = { "-fallback-style=none" },
						},
					},
				})

				local mason_conform = require("mason-conform")
				mason_conform.setup({
					ignore_install = {},
				})

				local mason_tool_installer = require("mason-tool-installer")
				mason_tool_installer.setup({
					ensure_installed = {},
				})
			end,
		},
		-- cmp
		--
		{
			"hrsh7th/nvim-cmp",
			event = "InsertEnter",
			dependencies = {
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"L3MON4D3/LuaSnip",
				"saadparwaiz1/cmp_luasnip",
				"rafamadriz/friendly-snippets",
				"onsails/lspkind.nvim",
			},
			config = function()
				local cmp = require("cmp")
				local luasnip = require("luasnip")
				local luasnip_loader = require("luasnip.loaders.from_vscode")
				luasnip_loader.lazy_load()
				local lspkind = require("lspkind")
				cmp.setup({
					completion = {
						completeopt = "menu,menuone,preview,noselect",
					},
					snippet = {
						expand = function(args)
							luasnip.lsp_expand(args.body)
						end,
					},
					mapping = {
						["<TAB>"] = function(fallback)
							if cmp.visible() then
								cmp.select_next_item()
							else
								fallback()
							end
						end,
						["<S-TAB>"] = function(fallback)
							if cmp.visible() then
								cmp.select_prev_item()
							else
								fallback()
							end
						end,
					},
					window = {
						completion = {
							scrollbar = false,
							border = "rounded",
							winhighlight = "Normal:CmpNormal",
						},
						documentation = {
							scrollbar = false,
							border = "rounded",
							winhighlight = "Normal:CmpNormal",
						},
					},
					sources = cmp.config.sources({
						{ name = "nvim_lsp" },
						{ name = "luasnip" },
						{ name = "buffer" },
						{ name = "path" },
						{ name = "orgmode" },
					}),
					formatting = {
						format = lspkind.cmp_format({
							maxwidth = 50,
							ellipsis_char = "...",
						}),
					},
				})
			end,
		},
	},
	defaults = {
		lazy = false,
	},
	git = {
		log = { "-6" },
	},
	dev = {
		fallback = false,
	},
	install = {
		missing = true,
		colorscheme = { "darcula" },
	},
	ui = {
		size = {
			width = 0.75,
			height = 0.75,
		},
		title_pos = "center",
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
