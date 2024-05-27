" vim ~/.vimrc

set nocompatible
filetype off

set showcmd
set showmode
set splitright
set splitbelow
set hidden
set nobackup
set nowritebackup
"set undofile
set noshowmatch
set cmdheight=2
set updatetime=300
set timeout
set timeoutlen=300
set signcolumn=yes
set cursorline
set scrolloff=15

set ignorecase
set smartcase
set history=1000
set incsearch
set hlsearch

set relativenumber
set number
set wildmenu
set wildmode=longest:full,full
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set encoding=UTF-8
set nowrap
set backspace=indent,eol,start

" Add .swp to wild ignore (for NERDTree)
set wildignore+=*.swp,*.DS_Store,*.meta

" Add .vim to the runtime path (for colors)
set rtp+=~/.vim

" Add Plug.vim to the runtime path
set rtp+=~/.vim/plugged/vim-plug

" Keymaps
let g:mapleader = ' '
let g:maplocalleader = ' '
imap jk <ESC>
nmap <leader>+ <C-a>
nmap <leader>- <C-x>
nmap <leader>nh <cmd>nohl<CR>
nmap <leader>sv <C-w>v
nmap <leader>sh <C-w>s
nmap <leader>se <C-w>=
nmap <leader>sx <cmd>close<CR>
nmap <leader>to <cmd>tabnew<CR>
nmap <leader>tf <cmd>tabnew %<CR>
nmap <leader>tx <cmd>tabclose<CR>
nmap <leader>tn <cmd>tabn<CR>
nmap <leader>tp <cmd>tabp<CR>

" NERDTree keymaps
nmap <leader>ee <cmd>NERDTreeToggle %<CR>

" NERDTree settings
let g:NERDTreeIgnore = [
\	'^node_modules$',
\	'^build',
\	'^out',
\	'^.git',
\	'^.cache'
\]
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeFileLines = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" vim-maximizer Keymaps
nmap <leader>sm <cmd>MaximizerToggle<CR>

" vim-maximizer settings
let g:maximizer_set_default_mapping = 1

" Tmux Navigator keymaps
nnoremap <silent> <c-h> <cmd>TmuxNavigateLeft<CR>
nnoremap <silent> <c-j> <cmd>TmuxNavigateDown<CR>
nnoremap <silent> <c-k> <cmd>TmuxNavigateUp<CR>
nnoremap <silent> <c-l> <cmd>TmuxNavigateRight<CR>

" Tmux Navigator settings
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 0
"let g:tmux_navigator_disable_when_zoomed = 1
"let g:tmux_navigator_preserve_zoom = 1
let g:tmux_navigator_no_wrap = 1

" vim-startify keymaps
"

" vim-startify settings
"

" Which-key keymaps
nnoremap <silent> <leader> <cmd>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> <cmd>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> <cmd>WhichKeyVisual '<Space>'<CR>
vnoremap <silent> <localleader> <cmd>WhichKeyVisual '<Space>'<CR>

" Which-key settings
let g:which_key_map = {}
let g:which_key_map['+'] =
\	['<C-a>', "Increment Number"]
let g:which_key_map['-'] =
\	['<C-x>', "Decrement Number"]
let g:which_key_map['ee'] =
\	[':NERDTreeToggle %', "Toggle File Explorer Tree"]
let g:which_key_map['nh'] =
\	[':nohl', "Clear Search Highlight"]
let g:which_key_map.s = {
\	'name': 'Window Management',
\	'v': ['<C-w>v', 'Split Window Vertically'],
\	'h': ['<C-w>s', 'Split Window Horizontally'],
\	'e': ['<C-w>=', 'Make Splits Equal Size'],
\	'x': [':close', 'Close Current Split'],
\	'm': [':MaximizerToggle', 'Maximize/Minimize Split Window'],
\}
let g:which_key_map.t = {
\	'name': 'Tab Management',
\	'o': [':tabnew', 'Open New Tab'],
\	'f': [':tabnew %', 'Open New Tab with Current Buffer'],
\	'x': [':tabclose', 'Close Current Tab'],
\	'n': [':tabn', 'Goto Next Tab'],
\	'p': [':tabp', 'Goto Previous Tab'],
\}
let g:which_key_use_floating_win = 1
let g:which_key_max_size = 0
let g:which_key_sep = "->"

" Begin Initialize Plug
call plug#begin('~/.vim/plugged')
	" Make sure to use single quotes

	" vim-maximizer
	" Dependencies:
	" Description:
	" Maximizes and restores the current window in Vim
	" Note:
	Plug 'szw/vim-maximizer'

	" Tmux Navigator
	" Dependencies:
	" Description:
	" Seamless navigation between tmux panes and vim splits
	" Note:
	Plug 'christoomey/vim-tmux-navigator'

	" vim-startify
	" Dependencies:
	" Description:
	" The fancy start screen for Vim.
	" Note:
	Plug 'mhinz/vim-startify'

	" Which-key
	" Dependencies:
	" Description:
	" Vim plugin that shows keybindings in popup
	" Note:
	Plug 'liuchengxu/vim-which-key'

	" Code completion
	" Dependencies:
	"	- nodejs
	"	- yarn ??
	"	- python3 (need to install pyvim/pynvim for Jedi ??)
	Plug 'neoclide/coc.nvim', { 'do': { -> coc#util#install() } }
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'davidhalter/jedi-vim'

	" Prettier (Code formatter)
	" Dependencies:
	"	- nodejs
	"	- yarn
	"	- python3
	"	- lua
	"	- ruby
	"	- php
	Plug 'prettier/vim-prettier', {
		\'do': 'yarn install --frozen-lockfile --production',
		\'for': [
			\'javascript',
			\'typescript',
			\'css',
			\'less',
			\'scss',
			\'graphql',
			\'markdown',
			\'vue',
			\'svelte',
			\'yaml',
			\'html',
			\'xml',
			\'json',
			\'lua',
			\'ruby',
			\'php',
		\]
	\}

	" Black (Python formatter)
	" TODO

	" ALE (Syntax checking & semantic errors)
	" Dependencies:
	"	-
	Plug 'dense-analysis/ale'

	" Fugitive (Git commands)
	" Dependencies:
	"	- git
	Plug 'tpope/vim-fugitive'

	" Git-Gutter (Git signs and commands)
	" Dependencies:
	"	- git
	" Note: gitgutter works but coc-git does a great job for showing signs
	Plug 'airblade/vim-gitgutter'

	" Dispatch (Async build and test dispatcher)
	" Dependencies:
	"	-
	Plug 'tpope/vim-dispatch'

	" CMake (CMake projects)
	" Dependencies:
	"	- Cmake
	"	- vim-dispatch (optional but recommended)
	Plug 'ilyachur/cmake4vim'

	" FZF
	" Dependencies:
	"	-
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
	Plug 'airblade/vim-rooter'

	" Status
	" Dependencies:
	"	-
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Battery
	" Dependencies:
	"	- Vim Plugins:
	"		- Airline
	" Note: Currently disabled since does not show on tabline
	"Plug 'lambdalisue/battery.vim'

	" Wifi
	" Dependencies:
	"	- Vim Plugins:
	"		- Airline
	" Note: Currently disabled since does not show on status nor tabline
	"Plug 'lambdalisue/wifi.vim'

	" Web API
	" Dependencies:
	"	- curl
	" Note: Currently disabled until Weather uses it
	"Plug 'mattn/webapi-vim'

	" Weather
	" Dependencies:
	"	- Vim Plugins:
	"		- Airline
	"		- Web API
	" Note: Currently disabled since appears to not update, also does not show
	" on tabline (only statusline)
	"Plug 'Wildog/airline-weather.vim'

	" Traces (Live preview for :substitute)
	" Dependencies:
	Plug 'markonm/traces.vim'

	" File system explorer
	" Dependencies:
	"	- Nerd Icons (although it can work without)
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
" - Automatically executes:
"	- filetype indent plugin on
"	- syntax on
call plug#end()

set background=dark
syntax on
"set termguicolors
set t_Co=256

" Registering Which-key keymaps
call which_key#register('<Space>', "g:which_key_map")

let g:oceanic_gutter_like_bg = 0
let g:oceanic_transparent_bg = 0
let g:oceanic_bold = 0
let g:oceanic_italic_comments = 1
colorscheme darcula

"colorscheme gruvbox8
"colorscheme oceanicnext

" Prettier settings

" ALE settings
let g:ale_fix_on_save = 1

" CoC settings
let g:coc_global_extensions = [
	\'coc-vimlsp', 'coc-snippets', 'coc-tsserver', 'coc-css', 'coc-html',
	\'coc-eslint', 'coc-markdownlint', 'coc-react-refactor',
	\'coc-pretty-ts-errors', 'coc-diagnostic', 'coc-fzf-preview', 'coc-yank',
	\'coc-prisma', 'coc-lua', 'coc-python', 'coc-go', 'coc-rust-analyzer',
	\'coc-clangd', 'coc-json', 'coc-yaml', 'coc-cmake', 'coc-sh', 'coc-git']
" TODO Code Completion Keybinding..
" Use <c-space> to trigger completion
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif
" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Fugitive

" Git-Gutter
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 0
let g:gitgutter_async = 1

" FZF
let g:fzf_vim = {}
let g:fzf_vim.preview_window = [
	\'right,50%',
	\'ctrl-/',
\]
let g:rooter_targets = '/,*'

" Airline
let g:airline_theme = 'zenburn'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = 'Error'
let g:airline#extensions#ale#warning_symbol = 'Warning:'
let g:airline#extensions#ale#show_line_numbers = 1
let g:airline#extensions#battery#enabled = 1
let g:airline#extensions#wifi#enabled = 1
let g:airline#extensions#weather#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#fzf#enabled = 1

" Battery
let g:battery#update_tabline = 1
let g:battery#update_statusline = 0

" Wifi
let g:wifi#update_tabline = 1
let g:wifi#update_statusline = 0

" Web API

" Weather
let g:weather#area = 'montreal,ca'
let g:weather#unit = 'metric'
let g:weather#cache_file = '~/.cache/.weather'
let g:weather#cache_ttl = '3600'
let g:weather#format = '%s %.0f¯C'
let g:weather#status_map = {
	\ "01d": "☀",
	\ "02d": "☁",
	\ "03d": "☁",
	\ "04d": "☁",
	\ "09d": "☂",
	\ "10d": "☂",
	\ "11d": "☈",
	\ "13d": "❅",
	\ "50d": "≡",
	\ "01n": "☽",
	\ "02n": "☁",
	\ "03n": "☁",
	\ "04n": "☁",
	\ "09n": "☂",
	\ "10n": "☂",
	\ "11n": "☈",
	\ "13n": "❅",
	\ "50n": "≡",
\}

