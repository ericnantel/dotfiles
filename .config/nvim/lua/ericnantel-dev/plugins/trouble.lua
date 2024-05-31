return {
	"folke/trouble.nvim",
	branch = "main",
	tag = "v2.10.0",
	dependencies = {
		-- "nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	config = function()
		require 'ericnantel-dev.trouble'
	end,
}
