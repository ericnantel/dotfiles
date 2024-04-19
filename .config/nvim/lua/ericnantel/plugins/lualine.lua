return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        { "nvim-tree/nvim-web-devicons" },
    },
    config = function()
        local lualine = require("lualine")
        local lazy_status = require("lazy.status")

        -- configure lualine with theme
        lualine.setup({
            options = {
                theme = "auto",
                component_separators = "",
                section_separators = "",
            },
            sections = {
				lualine_a = {
					{ "mode" },
				},
				lualine_b = {
					{ "branch" },
					{ "diff" },
					{ "diagnostics" },
				},
                lualine_x = {
                    {
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                        color = {
                            fg = "#ff9e64"
                        },
                    },
                    { "encoding" },
                    { "fileformat" },
                    { "filetype" },
                },
				lualine_y = {
					{ "os.date('%a %H:%M')" },
				},
				lualine_z = {
					{ "progress" },
					{ "location" },
				},
            },
			-- tabline = {
			-- 	lualine_a = {
			-- 		{ "buffers" },
			-- 	},
			-- 	lualine_y = {
			-- 		{ "tabs" },
			-- 	},
			-- 	lualine_z = {
			-- 		{ "os.date('%a %H:%M')" },
			-- 	},
			-- },
			winbar = {
			},
			extensions = {
			},
        })
    end
}
