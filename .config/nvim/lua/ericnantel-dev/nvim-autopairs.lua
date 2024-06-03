local nvimautopairs = require 'nvim-autopairs'

nvimautopairs.setup {
	disable_filetype = {
		'TelescopePrompt',
		'vim',
	},
	check_ts = true,
	ts_config = {
		lua = { 'string' },
		javascript = { 'template_string' },
		java = false,
	},
	map_cr = true,
	map_bs = true,
}
