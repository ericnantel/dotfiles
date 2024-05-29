return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		-- lazy, telescope?, fugitive, fzf?, etc..
		"nvim-tree/nvim-web-devicons",
		"tpope/vim-fugitive",
	},
	config = function()
		require 'ericnantel-dev.lualine'
	end,
}
