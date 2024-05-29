return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- "nvim-tree/nvim-web-devicons",
			{	"nvim-telescope/telescope-fzf-native.nvim", build = "make"	},
				"nvim-telescope/telescope-smart-history.nvim",
				"nvim-telescope/telescope-ui-select.nvim",
				-- "kkharji/sqlite.lua",
		},
		config = function()
			require 'ericnantel-dev.telescope'
		end,
	},
}
