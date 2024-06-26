return {
	-- plenary
	-- all the lua functions I don't want to write twice
	"nvim-lua/plenary.nvim",
-- TODO 
-- ththth
--
	-- nvim-web-devicons
	-- lua 'fork' of vim-web-devicons for neovim
    "nvim-tree/nvim-web-devicons",

	-- vim-maximizer
	-- maximizes and restores the current window in vim
	"szw/vim-maximizer",

	-- Tmux Navigator
	-- seamless navigation between tmux panes and vim splits
    "christoomey/vim-tmux-navigator",

	-- vim-startify?
	-- the fancy start screen for vim
	-- "mhinz/vim-startify",

	-- vim-commentary
	-- comment stuff out
    "tpope/vim-commentary",

	-- vim-fugitive
	-- a git wrapper so awesome, it should be illegal
    "tpope/vim-fugitive",

	-- vim-gitgutter
	-- a vim plugin which shows git diff markers in the sign column
	"airblade/vim-gitgutter",

	-- NERDTree ?
	-- a tree explorer plugin for vim
	-- "preservim/nerdtree",

	-- nerdtree-git-plugin ?
	-- a plugin of NERDTree showing git status
	-- "Xuyuanp/nerdtree-git-plugin",

	-- vim-airline ?
	-- lean & mean status/tabline for vim that's light as air
	-- "vim-airline/vim-airline",

	-- vim-airline-themes ?
	-- a collection of themes for vim-airline
	-- "vim-airline/vim-airline-themes",

	-- vim-z80
	-- Vim syntax for Z80 Assembler
	"samsaga2/vim-z80",

	-- Which-key ?
	-- vim plugin that shows keybindings in popup
	-- "liuchengxu/vim-which-key",

	-- which-key
	-- lua plugin for Neovim 0.5 that displays a pop with possible keybindings
	{	"folke/which-key.nvim", opts = {}	},

	-- dressing
	-- Neovim plugin to improve the default vim.ui interfaces
	{	"stevearc/dressing.nvim", opts = {}	},

	-- todo-comments
	-- highlight, list and search todo comments in your projects
	{
		"folke/todo-comments.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim"
		},
		opts = {},
	},
}
