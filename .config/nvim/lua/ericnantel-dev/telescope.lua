local data = assert(vim.fn.stdpath "data")

require('telescope').setup {
    defaults = {
      layout_strategy = 'horizontal',
      layout_config = {
		  anchor = 'N',
		  height = 0.75,
		  mirror = true,
		  preview_width = 0.50,
		  prompt_position = 'top',
		  width = 0.75,
	  },
	  sorting_strategy = 'ascending',
	  file_ignore_patterns = {
		  '.git', '.hg', '.svn',
		  '%.o', '%.obj', '%.fbx', '%.FBX', '%.mp3', '%.wav', '%.ogg', '%.zip', '%.exe', '%.dll', '%.a', '%.so', '%.pyc',
		  '%.ico', '%.tif', '%.bmp', '%.jpg', '%.jpeg', '%.png', '%.tga', '%.psd', '%.svg',
		  '%.bak', '%.cache', '%.class', '%.idea', '%.swp', '%.DS_Store', '%.meta',
		  --'^node_modules/', '^build/', '^dist/', '^out/',
		  'node_modules/.*', 'build/.*', 'dist/.*', 'out/.*',
	  },
    },
	extensions = {
		wrap_results = true,
		fzf = {},
		history = {
			path = vim.fs.joinpath(data, "telescope_history.sqlite3"),
			limit = 100,
		},
		['ui-select'] = {
			require('telescope.themes').get_dropdown {},
		},
	},
}

pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'smart_history')
pcall(require('telescope').load_extension, 'ui-select')

local builtin = require 'telescope.builtin'

-- keymaps
vim.keymap.set('n', '<leader>fd', builtin.find_files)
vim.keymap.set('n', '<leader>ft', builtin.git_files)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find)

vim.keymap.set('n', '<leader>gw', builtin.grep_string)
