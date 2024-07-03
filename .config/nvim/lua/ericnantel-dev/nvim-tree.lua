local nvimtree = require 'nvim-tree'

nvimtree.setup {
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
}
