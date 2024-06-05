return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"tpope/vim-fugitive",
	},
	config = function()
		require 'ericnantel-dev.lualine'
	end,
}
