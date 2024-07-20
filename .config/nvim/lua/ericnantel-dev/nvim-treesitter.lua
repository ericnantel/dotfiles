local nvimtreesitter = require 'nvim-treesitter.configs'

nvimtreesitter.setup {
	ensure_installed = {
		'c', 'cpp',
		'javascript', 'typescript', 'tsx',
		-- 'c_sharp', 'java',
		'rust', 'go',
		'lua', 'python',
		'json', 'yaml', 'toml',
		'vim', 'vimdoc', 'cmake', 'bash', 'dockerfile',
		'git_config', 'git_rebase',
		'gitattributes', 'gitcommit', 'gitignore',
		'tmux',
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
