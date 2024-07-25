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
set cmdheight=1
set updatetime=300
set timeout
set timeoutlen=300
set signcolumn=yes
set cursorline
set scrolloff=8
"set sidescrolloff=8

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
"set shiftround
set expandtab
set autoindent
set smartindent
set encoding=UTF-8
set nowrap
set backspace=indent,eol,start

" Add .swp to wild ignore (for NERDTree)
set wildignore+=*.swp,*.DS_Store,*.meta

" Add .vim to the runtime path (for colors)
set rtp+=~/.vim

" Add llvm binaries to the runtime path (for clang-format and clang-tidy)
if has("win32")
	if isdirectory(expand("~/scoop/apps/llvm/current/bin"))
		set rtp+=~/scoop/apps/llvm/current/bin
	endif
endif

" Add Plug.vim to the runtime path
set rtp+=~/.vim/plugged/vim-plug

" Keymaps
let g:mapleader = ' '
let g:maplocalleader = ' '
imap jk <ESC>
vmap jk <ESC>
" TODO: clipboard support but only if installed
" TODO: disable mouse and ttymouse but need to test over ssh
nmap <leader>+ <C-a>
nmap <leader>- <C-x>
nmap <leader>nh <cmd>nohl<CR>
nmap <leader>sv <C-w>v
nmap <leader>sh <C-w>s
nmap <leader>se <C-w>=
nmap <leader>s, <C-w>5<
nmap <leader>s. <C-w>5>
nmap <leader>s- <C-w>-
nmap <leader>s+ <C-w>+
nmap <leader>sx <cmd>close<CR>
nmap <leader>to <cmd>tabnew<CR>
nmap <leader>tf <cmd>tabnew %<CR>
nmap <leader>tx <cmd>tabclose<CR>
nmap <leader>tn <cmd>tabn<CR>
nmap <leader>tp <cmd>tabp<CR>

" vim-maximizer keymaps
nmap <leader>sm <cmd>MaximizerToggle<CR>
vmap <leader>sm <cmd>MaximizerToggle<CR>gv

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
let g:startify_change_to_dir = 1
let g:startify_update_oldfiles = 1
let g:startify_relative_path = 1
let g:startify_session_dir = '~/.vim/session'
let g:startify_session_autoload = 0
let g:startify_session_before_save = [
\ 'silent! NERDTreeClose'
\]
let g:startify_session_persistence = 1
let g:startify_session_sort = 1
let g:startify_skiplist = []
let g:startify_bookmarks = [
\ '~/.bashrc',
\ '~/.config/nvim/',
\ '~/.config/zellij/config.kdl',
\ '~/.tmux.conf',
\ '~/.vimrc',
\ '~/.wezterm.lua',
\ '~/.zshrc',
\]
let g:startify_commands = []
let g:startify_custom_header = [
\ "Wake up, Neo...",
\ "The Matrix has you...",
\ "Follow the white rabbit.",
\ "",
\ "",
\ "Knock, knock, Neo.",
\ "",
\]
let g:startify_lists = [
\ {'type': 'sessions',	'header': ['	Sessions']},
\ {'type': 'bookmarks', 'header': ['	Bookmarks']},
\ {'type': 'commands',	'header': ['	Commands']},
"\ {'type': 'files',		'header': ['	MRU']},
"\ {'type': 'dir',		'header': ['	MRU '. getcwd()]},
\]
let g:startify_custom_footer = []

" vim-commentary keymap
nmap <silent> z gc
nmap <silent> zz gcc
vmap <silent> z gc

" vim-commentary settings
"

" vim-fugitive keymap
"

" vim-fugitive settings
"

" vim-markdown keymap
"

" vim-markdown settings
let g:vim_markdown_folding_disabled = 1

" vim-glsl keymap
"

" vim-glsl settings
" 

" NERDTree keymaps
nmap <leader>ee <cmd>NERDTreeToggle %<CR>

" NERDTree settings
let g:NERDTreeIgnore = [
\	'^node_modules$',
\	'^build',
\	'^dist',
\	'^out',
\	'^.git',
\	'^.hg',
\	'^.svn',
\	'^.bak',
\	'^.cache'
\]
let g:NERDTreeDirArrowExpandable = '→'
let g:NERDTreeDirArrowColapsible = '↓'
let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize = 38
let g:NERDTreeMinimalMenu = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeFileLines = 0

" nerdtree-git-plugin keymaps
"

" nerdtree-git-plugin settings
let g:NERDTreeGitStatusIndicatorMapCustom = {
\	'Modified'	:'✹',
\	'Staged'	:'✚',
\	'Untracked'	:'✭',
\	'Renamed'	:'➜',
\	'Unmerged'	:'═',
\	'Deleted'	:'✖',
\	'Dirty'		:'✗',
\	'Ignored'	:'☒',
\	'Clean'		:'✔︎',
\}

let g:NERDTreeGitStatusUseNerdFonts = 1

" vim-airline keymaps
"

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#fugitiveline#enabled = 1

" vim-airline-themes keymaps
"

" vim-airline-themes settings
let g:airline_theme = 'zenburn'

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
\	'.': ['<C-w>5<', 'Decrement Current Split Width'],
\	',': ['<C-w>5>', 'Increment Current Split Width'],
\	'-': ['<C-w>-', 'Decrement Current Split Height'],
\	'+': ['<C-w>+', 'Increment Current Split Height'],
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

" vim-devicons keymaps
"

" vim-devicons settings
"

" vim-clang-format keymaps
"

" vim-clang-format settings
let g:clang_format#command = "clang-format"
"let g:clang_format#extra_args = "--verbose"
let g:clang_format#auto_format = 1
let g:clang_format#auto_filetypes = [ "c", "cpp" ]
let g:clang_format#detect_style_file = 1
let g:clang_format#enable_fallback_style = 0

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

	" vim-commentary
	" Dependencies:
	" Description:
	" Comment stuff out
	" Note:
	Plug 'tpope/vim-commentary'

	" vim-fugitive
	" Dependencies:
	" Description:
	" A Git wrapper so awesome, it should be illegal
	" Note:
	Plug 'tpope/vim-fugitive'

	" vim-markdown
	" Dependencies:
	" Description:
	" Markdown Vim Mode
	" Note:
	Plug 'preservim/vim-markdown'

	" vim-glsl
	" Dependencies:
	" Description:
	" Vim syntax highlighting for OpenGL Shading Language
	" Note:
	Plug 'tikhomirov/vim-glsl'

	" NERDTree
	" Dependencies:
	" Description:
	" A tree explorer plugin for vim.
	" Note:
	Plug 'preservim/nerdtree'

	" nerdtree-git-plugin
	" Dependencies:
	" Description:
	" A plugin of NERDTree showing git status
	" Note:
	Plug 'Xuyuanp/nerdtree-git-plugin'

	" vim-airline
	" Dependencies:
	" Description:
	" lean & mean status/tabline for vim that's light as air
	" Note:
	Plug 'vim-airline/vim-airline'

	" vim-airline-themes
	" Dependencies: 
	" vim-airline
	" Description:
	" A collection of themes for vim-airline
	" Note:
	Plug 'vim-airline/vim-airline-themes'
	
	" vim-z80
	" Dependencies:
	" Description:
	" Vim syntax for Z80 Assembler
	" Note:
	Plug 'samsaga2/vim-z80'

	" Which-key
	" Dependencies:
	" Description:
	" Vim plugin that shows keybindings in popup
	" Note:
	Plug 'liuchengxu/vim-which-key'

	" vim-devicons
	" Dependencies:
	" Description:
	" Adds file type icons to Vim plugins such as NERDTree, vim-airline, and many more
	" Note:
	" We shall put this plugin as last
	Plug 'ryanoasis/vim-devicons'

	" vim-clang-format
	" Dependencies:
	" - clang-format
	" - python3
	" Description:
	" A formatter for C, C++, and so on.
	" Note:
	Plug 'rhysd/vim-clang-format'

	" Code completion
	" Dependencies:
	"	- nodejs
	"	- yarn
	"	- webpack
	"	- python3 ?
	Plug 'neoclide/coc.nvim', { 'do': { -> coc#util#install() } }

	" ALE (Syntax checking & semantic errors)
	" Dependencies:
	"	-
	Plug 'dense-analysis/ale'

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
	"Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

" Initialize plugin system
" - Automatically executes:
"	- filetype indent plugin on
"	- syntax on
call plug#end()

set background=dark
syntax on
"set termguicolors
set t_Co=256

" Recognizing custom filetypes
autocmd BufNewFile,BufRead *.z80.asm set filetype=z80
autocmd FileType z80 setlocal commentstring=;\ %s

" Registering Which-key keymaps
call which_key#register('<Space>', "g:which_key_map")

let g:oceanic_gutter_like_bg = 0
let g:oceanic_transparent_bg = 0
let g:oceanic_bold = 0
let g:oceanic_italic_comments = 1
colorscheme darcula

"colorscheme gruvbox8
"colorscheme oceanicnext

" CoC settings
" TODO: OmniSharp, Java, Tmux, Markdown Preview ?
let g:coc_global_extensions = [
	\'coc-clangd',
	\'coc-tsserver', 'coc-eslint', 'coc-react-refactor', 'coc-pretty-ts-errors',
	\'coc-rust-analyzer', 'coc-go',
	\'coc-lua', 'coc-python',
	\'coc-json', 'coc-yaml', 'coc-toml',
	\'coc-vimlsp', 'coc-cmake', 'coc-sh', 'coc-docker',
	\'coc-git',
	\'coc-diagnostic', 'coc-fzf-preview', 'coc-highlight'
\]

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

" ALE settings
let g:ale_fix_on_save = 1

" Git-Gutter
" NOTE: gitgutter signs are disabled because we are using coc-git signs instead
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 0
let g:gitgutter_async = 1

" FZF
let g:fzf_vim = {}
let g:fzf_vim.preview_window = [
	\'right,50%',
	\'ctrl-/',
\]

" Airline
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = 'Error'
let g:airline#extensions#ale#warning_symbol = 'Warning:'
let g:airline#extensions#ale#show_line_numbers = 1
let g:airline#extensions#fzf#enabled = 1

