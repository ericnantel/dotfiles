return {
    "nvim-treesitter/nvim-treesitter",
    -- event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
		require 'ericnantel-dev.nvim-treesitter'
	end,
}
