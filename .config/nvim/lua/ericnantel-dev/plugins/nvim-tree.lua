return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        -- "nvim-tree/nvim-web-devicons",
    },
    config = function()
		require 'ericnantel-dev.nvim-tree'
    end,
}
