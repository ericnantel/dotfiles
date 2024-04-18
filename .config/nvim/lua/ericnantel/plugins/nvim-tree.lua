return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				side = "left",
				number = true,
				relativenumber = true,
				signcolumn = "yes",
				width = 35,
				float = {
					enable = false,
				},
			},
			-- change folder arrow icons
			renderer = {
				indent_width = 2,
				indent_markers = {
					enable = true,
					inline_arrows = true,
				},
				icons = {
					web_devicons = {
						file = {
							enable = true,
							color = true,
						},
						folder = {
							enable = true,
							color = true,
						},
					},
					padding = " ",
					glyphs = {
						folder = {
							arrow_closed = "→",
							arrow_open = "↓",
						},
					},
				},
			},
			git = {
				ignore = false,
			},
			filters = {
				enable = true,
				git_ignored = true,
				dotfiles = false,
				custom = {
					".DS_Store",
					".meta",
					".swp",
				},
				exclude = {
					".gitmodule",
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
		})

		-- set keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer"})
		keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle File Explorer on Current File"})
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse File Explorer"})
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh File Explorer"})
	end
}
