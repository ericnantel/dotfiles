local lualine = require 'lualine'
local lazystatus = require 'lazy.status'

lualine.setup {
	options = {
		icons_enabled = true,
		theme = 'auto',
        component_separators = '',
        section_separators = '',
		disabled_filetypes = {
			'alpha',
		},
	},
	sections = {
		lualine_a = {
			'mode',
		},
		lualine_b = {
			'branch', 'diff', 'diagnostics',
		},
		lualine_c = {
			'filename',
		},
		lualine_x = {
			{
				lazystatus.updates,
				cond = lazystatus.has_updates,
				color = {
					fg = '#ff9e64'
				},
			},
			'encoding', 'fileformat', 'filetype',
		},
		lualine_y = {
			{
				'datetime',
				style = '%a %H:%M',
			},
		},
		lualine_z = {
			'progress', 'location',
		},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {
			'filename',
		},
		lualine_x = {
			'location',
		},
		lualine_y = {},
		lualine_z = {},
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
