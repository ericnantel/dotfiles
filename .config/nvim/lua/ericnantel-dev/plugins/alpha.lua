return {
	{
		"goolord/alpha-nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- "nvim-tree/nvim-web-devicons",
			-- "BlakeJC94/alpha-nvim-fortune",
		},
		config = function()
			require 'ericnantel-dev.alpha'
		end,
	},
}
