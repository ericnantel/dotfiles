return {
	"folke/trouble.nvim",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
		{ "folke/todo-comments.nvim" },
	},
	keys = {
		{ "<leader>xx", "<cmd>TroubleToggle<CR>", desc = "" },
		{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "Open Trouble Workspace Diagnostics" },
		{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "Open Trouble Document Diagnostics" },
		{ "<leader>xq", "<cmd>TroubleToggle quickfix<CR>", desc = "Open Trouble Quickfix List" },
		{ "<leader>xl", "<cmd>TroubleToggle loclist<CR>", desc = "Open Trouble Location List" },
		{ "<leader>xt", "<cmd>TodoTrouble<CR>", desc = "Open TODOs in Trouble" },
	},
}
