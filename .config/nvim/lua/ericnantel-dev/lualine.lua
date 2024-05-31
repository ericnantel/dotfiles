local lualine = require 'lualine'

lualine.setup {
	options = {
		icons_enabled = true,
		theme = 'auto',
        component_separators = '',
        section_separators = '',
	},
	extensions = {
		'fugitive',
		'lazy',
		-- 'mason',
		-- 'nerdtree',
		'nvim-tree',
		-- 'oil',
		'trouble',
	},
}
