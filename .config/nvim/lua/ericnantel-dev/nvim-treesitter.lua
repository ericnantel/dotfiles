local nvimtreesitter = require 'nvim-treesitter.configs'

nvimtreesitter.setup {
	ensure_installed = {
		'c', 'cpp',
		'rust', 'go',
		'c_sharp', 'java',
		'lua', 'python',
		'javascript', 'typescript', 'tsx',
		'json', 'yaml', 'toml', 'xml',
		'vim', 'vimdoc',
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
