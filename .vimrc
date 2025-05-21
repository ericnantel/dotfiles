
set nocompatible
filetype off

set splitright
set splitbelow

set undodir=~/.vim/undodir
set undofile

set number
set relativenumber
set signcolumn=yes
set numberwidth=2

set ignorecase
set smartcase
set incsearch
set hlsearch

set tabstop=4
set softtabstop=4
set shiftwidth=4
"set shiftround
set noexpandtab
set autoindent
set smartindent

set nowrap
set noshowmatch
set noruler
set notitle
set nocursorline
set nobackup
set nowritebackup

"set mouse=
"set ttymouse=
"set mousescroll=ver:0,hor:0
set encoding=UTF-8
set backspace=indent,eol,start
set clipboard^=unnamed,unnamedplus

" For French-Canadian keyboard layout
" You may export the env. variable in your shell
" But this is a less intrusive way to fix the
" 'É' key not firing when $LANG is not set to 'fr_CA.utf-8'
let $LANG = "fr_CA.UTF-8"

set background=dark
syntax on
set t_Co=256
" Comment this if your terminal doesn't support it
" But I mainly enabled it to fix airline and/or ailine_theme plugin(s)
set termguicolors

set scrolloff=5
set showcmd
set showmode
set cmdheight=1
set laststatus=2
set updatetime=300
set timeout
set timeoutlen=300
set history=20

set hidden

set wildmenu
set wildmode=longest:full,full
set wildignore+=*.swp,*.DS_Store,*.meta

" NOTE: The motion 'gf'(Goto File) does not appear to work
" in Vim on MacOS or GNU/Linux; however it works on Windows
" and it works in Neovim when we append '**' to path
set path+=**

" Runtime paths for colorschemes, plugins, clang tools
set rtp+=~/.vim
set rtp+=~/.vim/plugged/vim-plug
if has("win32")
	if isdirectory(expand("~/scoop/apps/llvm/current/bin"))
		set rtp+=~/scoop/apps/llvm/current/bin
	endif
endif

" Make sure to have ~/.vim/colors/darcula.vim
" You can find it in my dotfiles submodules
" https://github.com/ericnantel/dotfiles/tree/main/colorschemes
" or comment the line below
colorscheme darcula

" Z80
autocmd BufNewFile,BufRead *.z80.asm set filetype=z80
"autocmd FileType z80 setlocal ts=4 sts=4 sw=4 noexpandtab

let g:mapleader = ' '
let g:maplocalleader = ' '

imap jk <ESC>
vmap jk <ESC>

nnoremap + <C-a>
nnoremap - <C-x>

vnoremap < <gv
vnoremap > >gv

" For French-Canadian keyboard layout '¸' is next to '^'
nnoremap ¸ $
vnoremap ¸ $

" For French-Canadian keyboard layout 'é' and 'É' are unused
" So let's use it for quickfix list
nnoremap é <cmd>cnext<CR>
nnoremap É <cmd>cprevious<CR>

" NOTE: Ignore and comment this if your keyboard layout is fine
" BUG: On MacOS, my personal keyboard layout is missing dead keys
" BUG: On Windows or Linux, remember to double-type '`', '^', '¸', '¨'
" However, when double-typing '`' it is recognized as '``' (undesired jump)
" So for marks, do not double-type '`', it should work..
if has("macunix")
	nnoremap ç $
	vnoremap ç $
	nnoremap à `
	nnoremap àà ``
else
	nnoremap à `a
	nnoremap è `e
	nnoremap ù `u
	nnoremap ì `i
	nnoremap ò `o
endif

nmap <leader>sv <C-w>v
nmap <leader>sh <C-w>s
nmap <leader>se <C-w>=
nmap <leader>sx <cmd>close<CR>
nmap <leader>s<Left> <C-w>5<
nmap <leader>s<Right> <C-w>5>
nmap <leader>s<Up> <C-w>-
nmap <leader>s<Down> <C-w>+

nmap <leader>nh <cmd>nohlsearch<CR>

" vim-tmux-navigator
nnoremap <silent> <c-h> <cmd>TmuxNavigateLeft<CR>
nnoremap <silent> <c-j> <cmd>TmuxNavigateDown<CR>
nnoremap <silent> <c-k> <cmd>TmuxNavigateUp<CR>
nnoremap <silent> <c-l> <cmd>TmuxNavigateRight<CR>
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 0
"let g:tmux_navigator_disable_when_zoomed = 1
"let g:tmux_navigator_preserve_zoom = 1
let g:tmux_navigator_no_wrap = 1


" vim-maximizer
nnoremap <leader>sm <cmd>MaximizerToggle<CR>
vnoremap <leader>sm <cmd>MaximizerToggle<CR>gv
let g:maximizer_set_default_mapping = 1

" vim-signature
nmap <silent> m; ]`
let g:SignatureWrapJumps = 1
let g:SignatureMarkTextHLDynamic = 1

" vim-commentary
nmap <silent> z gc
nmap <silent> zz gcc
vmap <silent> z gc
autocmd FileType z80 setlocal commentstring=;\ %s
autocmd FileType glsl setlocal commentstring=//\ %s
autocmd FileType lisp setlocal commentstring=;;\ %s

" vim-devicons
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

" vim-airline + vim-airline-themes
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = 'Error'
let g:airline#extensions#ale#warning_symbol = 'Warning:'
let g:airline#extensions#ale#show_line_numbers = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline_powerline_fonts = 1
let g:airline_theme = 'zenburn'

" vim-gitgutter
" NOTE: if you're using coc-git then you might want to disable gitgutter_signs
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 0
let g:gitgutter_async = 1

" vim-fugitive
"

" vim-which-key
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
let g:which_key_ignore_outside_mappings = 0
let g:which_key_use_floating_win = 1
let g:which_key_max_size = 0
let g:which_key_sep = "->"
let g:which_key_map = {}
let g:which_key_map['+'] = ['<C-a>', "number-increment"]
let g:which_key_map['-'] = ['<C-x>', "number-decrement"]
let g:which_key_map.s = {
	\ 'name': "+split",
	\ 'v': ['<C-w>v', "split-vertical"],
	\ 'h': ['<C-w>s', "split-horizontal"],
	\ 'e': ['<C-w>=', "split-equal"],
	\ 'm': [':MaximizerToggle', "split-maximize-toggle"],
	\ 'x': [':close', "split-close"],
	\ '<Right>': ['<C-w>5>', "split-increment-width"],
	\ '<Left>': ['<C-w>5<', "split-decrement-width"],
	\ '<Down>': ['<C-w>+', "split-increment-height"],
	\ '<Up>': ['<C-w>-', "split-decrement-height"],
  \ }
let g:which_key_map.f = {
	\ 'name': "+find",
	\ 'f': [':Files<CR>', "find-files"],
	\ 's': [':Rg<CR>', "find-grep"],
	\ 'c': [':Rg <C-r><C-w><CR>', "find-files"],
	\ }
let g:which_key_map['nh'] = [':nohlsearch', "suspend-hlsearch-highlighting"]
let g:which_key_map['ee'] = [':NERDTreeToggle %', "file-explorer-tree-open-toggle"]
let g:which_key_map_visual = {}
let g:which_key_map_visual['+'] = ['g<C-a>', "number-increment-block"]
let g:which_key_map_visual['-'] = ['g<C-x>', "number-decrement-block"]
let g:which_key_map_visual.s = {
	\ 'name': "+split",
	\ 'v': ['<C-w>v', "split-vertical"],
	\ 'h': ['<C-w>s', "split-horizontal"],
	\ 'e': ['<C-w>=', "split-equal"],
	\ 'm': [':MaximizerToggle<CR>gv', "split-maximize-toggle"],
	\ 'x': [':close', "split-close"],
	\ '<Right>': ['<C-w>5>', "split-increment-width"],
	\ '<Left>': ['<C-w>5<', "split-decrement-width"],
	\ '<Down>': ['<C-w>+', "split-increment-height"],
	\ '<Up>': ['<C-w>-', "split-decrement-height"],
  \ }

" fzf.vim
" TODO: Fix ripgrep or gitignore because it does not show dotfiles
" TODO: f/ search in current file with preview
nnoremap <leader>ff <cmd>Files<CR>
nnoremap <leader>fs <cmd>Rg<CR>
nnoremap <leader>fc :Rg <C-r><C-w><CR>
let g:fzf_vim = {}
let g:fzf_vim.buffers_jump = 1
let g:fzf_vim.buffers_options = '--style full --border-label "Open Buffers "'
let g:fzf_vim.grep_multi_line = 0
let g:fzf_vim.listproc = { list -> fzf#vim#listproc#quickfix(list) }
function! s:build_quickfix_list(lines)
	call setqflist(map(copy(a:lines), '{ "filename": v:val, "lnum": 1 }'))
	copen
	cc
endfunction
" TODO: Add smart selection to quickfix list
" Which is if we don't select anything, then select all
let $FZF_DEFAULT_OPTS = '--bind tab:down,shift-tab:up,ctrl-s:toggle --multi --reverse --no-scrollbar --smart-case --preview-window=left'
let g:fzf_action = {
	\ 'ctrl-q': function('s:build_quickfix_list')
	\ }
let g:fzf_layout = {
	\ 'window': { 'width': 0.85, 'height': 0.85, 'relative': v:true, 'yoffset': 0.0 }
	\ }
let g:fzf_colors = {
	\ 'fg': ['fg', 'Normal'],
	\ 'bg': ['bg', 'Normal'],
	\ 'query': ['fg', 'Normal'],
	\ 'hl': ['fg', 'Comment'],
	\ 'fg+': ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
	\ 'bg+': ['bg', 'CursorLine', 'CursorColumn'],
	\ 'hl+': ['fg', 'Statement'],
	\ 'info': ['fg', 'PreProc'],
	\ 'border': ['fg', 'Ignore'],
	\ 'prompt': ['fg', 'Conditional'],
	\ 'pointer': ['fg', 'Exception'],
	\ 'marker': ['fg', 'Keyword'],
	\ 'spinner': ['fg', 'Label'],
	\ 'header': ['fg', 'Comment']
	\ }
let g:fzf_history_dir = '~/.local/share/fzf-history'

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
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeFileLines = 0

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

" vim-clang-format settings
let g:clang_format#command = "clang-format"
"let g:clang_format#extra_args = "--verbose"
let g:clang_format#auto_format = 1
let g:clang_format#auto_filetypes = [ "c", "cpp" ]
let g:clang_format#detect_style_file = 1
let g:clang_format#enable_fallback_style = 0

" Plugins
" Dependencies:
" vim-plug -> git, curl (optional to download plug.vim)
" vim-tmux-navigator -> tmux (optional but recommended)
" vim-maximizer ->
" vim-signature ->
" vim-commentary ->
" vim-devicons -> nerd-font
" vim-airline ->
" vim-airline-themes ->
" vim-gitgutter -> git
" vim-fugitive -> git
" vim-which-key ->
" fzf.vim -> fzf, ripgrep, bat
call plug#begin('~/.vim/plugged')
	" Make sure to use single quotes
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'szw/vim-maximizer'
	Plug 'kshenoy/vim-signature'
	Plug 'tpope/vim-commentary'
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'
	Plug 'liuchengxu/vim-which-key'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	" Dependencies nodejs
	" Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }


	Plug 'samsaga2/vim-z80'
	Plug 'ericnantel/vim-z80-docs'

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

call plug#end()

call which_key#register('<Space>', "g:which_key_map", 'n')
call which_key#register('<Space>', "g:which_key_map_visual", 'v')

" CoC settings
" TODO: OmniSharp, Java, Tmux, Markdown Preview ?
let g:coc_config_home = "~/.vim"
let g:coc_global_extensions = [
	\'coc-clangd',
	\'coc-tsserver', 'coc-eslint', 'coc-react-refactor', 'coc-pretty-ts-errors',
	\'coc-rust-analyzer', 'coc-go',
	\'coc-lua', 'coc-python',
	\'coc-json', 'coc-yaml', 'coc-toml',
	\'coc-vimlsp', 'coc-cmake', 'coc-sh', 'coc-docker',
	\'coc-git',
	\'coc-diagnostic', 'coc-highlight'
\]

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to
" enable no select by `"suggest.noselect": true`in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
		\ coc#pum#visible() ? coc#pum#next(1) :
		\ CheckBackspace() ? "\<TAB>" :
		\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
							\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline(',')[col - 1] =~# '\s'
endfunction
" Use <c-space> to trigger completion
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif
" TODO: navigate diagnostic [g ]g I don't like those..
" TODO: We need to show with fzf diagnostics so that we can add those to quickfix
" TODO: Add :CocDiagnostics but see if fzf knows what to do
" GoTo code navigation
" NOTE: I am hoping to add references to show in fzf using <leader>fr
" NOTE: Make sure that "coc.preferences.useQuickfixForLocations": true
" Is in the :CocConfig so that coc-references uses quickfix list
nmap <silent><nowait> grr <Plug>(coc-references)
nmap <silent><nowait> gD <Plug>(coc-declaration)
nmap <silent><nowait> gd <Plug>(coc-definition)
nmap <silent><nowait> gi <Plug>(coc-implementation)
nmap <silent><nowait> gt <Plug>(coc-type-definition)
" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
	if CocAction('hasProvider', 'hover')
		" call CocActionAsync('doHover')
		call CocActionAsync('definitionHover')
	else
		call feedkeys('K', 'in')
	endif
endfunction
" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)
" Add (Neo)Vim's native status line support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" TODO: Mappings for CoCList

" ALE settings
let g:ale_fix_on_save = 1

" " FZF-Preview
" let g:fzf_vim.preview_window = [
" 	\'right,50%',
" 	\'ctrl-/',
" \]

