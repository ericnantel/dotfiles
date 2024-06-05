local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	vim.fn.system {
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	}
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	spec = {
		-- {
		-- 	"LazyVim/LazyVim",
		-- 	import = 'lazyvim.plugins',
		-- 	opts = {
		-- 		colorscheme = 'darcula',
		-- 		news = {
		-- 			lazyvim = true,
		-- 			neovim = true,
		-- 		},
		-- 	},
		-- },
		-- {	import = 'lazyvim.plugins.extras.lang.json'},
		-- {	import = 'lazyvim.plugins.extras.lang.typescript'},
		-- {	import = 'lazyvim.plugins.extras.lang.tailwind'},
		{	import = 'ericnantel-dev/plugins'	},
	},
	defaults = {
		lazy = false,
	},
	git = {
		log = { '-6' },
	},
	dev = {
		fallback = false,
	},
	install = {
		missing = true,
		colorscheme = { 'darcula' },
	},
	ui = {
		size = {
			width = 0.75,
			height = 0.75,
		},
		title_pos = 'center',
	},
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
	performance = {
		cache = {
			enabled = true,
		},
	},
})
