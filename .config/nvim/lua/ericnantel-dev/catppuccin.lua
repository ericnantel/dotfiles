local catppuccin = require 'catppuccin'

catppuccin.setup {
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
}
