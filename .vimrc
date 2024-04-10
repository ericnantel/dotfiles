" vim ~/.vimrc

set nocompatible						" be iMproved, required (for Vundle)
filetype off							" required (for Vundle)

" Add .vim to the runtime path (for colors)
set rtp+=~/.vim

" Add Vundle.vim to the runtime path
"set rtp+=~/.vim/bundle/Vundle.vim

" Add Plug.vim to the runtime path
set rtp+=~/.vim/plugged/vim-plug

" Begin Initialize Plug
call plug#begin('~/.vim/plugged')
	" Make sure to use single quotes

	" Code completion
	" Dependencies:
	"	- nodejs
	"	- python3 (need to install pyvim/pynvim for Jedi ??)
	Plug 'neoclide/coc.nvim', { 'do': { -> coc#util#install() } }
	Plug 'davidhalter/jedi-vim'

	" Syntax checking and semantic errors
	" Dependencies:
	"	-
	Plug 'dense-analysis/ale'
	
	" Git
	" Depedencies:
	"	-
	Plug 'tpope/vim-fugitive'
	
	" Fuzzy Finder
	" Depedencies:
	"	-
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
	
	" Status
	" Dependencies:
	"	-
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	
	" File system explorer
	" Dependencies:
	"	-
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
" - Automatically executes:
"	- filetype indent plugin on
"	- syntax on
call plug#end()

" Begin Initialize Vundle
"call vundle#begin('~/.vim/bundle')
	" Let Vundle manage Vundle, required (for Vundle)
	"Plugin 'VundleVim/Vundle.vim'

	" Code Completion (requires nodejs)
	"Bundle 'neoclide/coc.nvim', { 'do': { -> coc#util#install() } }
	"Bundle 'rodrigore/coc-tailwind-intellisense', { 'do': 'npm install' }

	" C# however ..
	"Bundle 'OmniSharp/omnisharp-vim'
	"Bundle 'tpope/vim-dispatch'

	" Ale
	"Bundle 'dense-analysis/ale'

	" Fugitive
	"Bundle 'tpope/vim-fugitive'

	" FZF
	"Bundle 'junegunn/fzf', { 'do': { -> fzf#install() } }
	"Bundle 'junegunn/fzf.vim'

	" Airline
	"Bundle 'vim-airline/vim-airline'
	"Bundle 'vim-airline/vim-airline-themes'

	" File system explorer
	"Bundle 'preservim/nerdtree'

	" File system explorer Git status
	"Bundle 'Xuyuanp/nerdtree-git-plugin'

	" Always load the Vim DevIcons as the very last one
	"Bundle 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
"call vundle#end()						" required (for Vundle)
"filetype indent plugin on				" required (for Vundle)
" Brief help
" :PluginList							- lists configured plugins
" :PluginInstall						- installs plugins; append '|' to update or just :PluginUpdate
" :PluginSearch foo						- searches for foo; append '|' to refresh local cache
" :PluginClean							- confirms removal of unused plugins; append '|' to auto-approve removal

set cmdheight=1
set splitbelow
set noshowmatch
set updatetime=500

" CoC
" Brief help
" :CocInstall coc-json coc-tsserver		- installs plugins
let g:coc_global_extensions = [
	\'coc-vimlsp', 'coc-snippets', 'coc-tsserver', 'coc-css', 'coc-html',
	\'coc-eslint', 'coc-markdownlint', 'coc-react-refactor',
	\'coc-pretty-ts-errors', 'coc-diagnostic', 'coc-fzf-preview', 'coc-yank',
	\'coc-prisma', 'coc-lua', 'coc-python', 'coc-go', 'coc-rust-analyzer',
	\'coc-clangd', 'coc-json', 'coc-yaml', 'coc-cmake', 'coc-sh', 'coc-git']

" OmniSharp
"let g:OmniSharp_timeout=1				" Timeout in seconds to wait for a response from the server
"set completeopt=longest,menuone,preview
"augroup omnisharp_commands
"	autocmd!
"	autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
"augroup END

" Fugitive

" FZF

" Airline
let g:airline_theme='zenburn'
let g:airline#extensions#fugitiveline#enabled=1
"let g:airline#extensions#fzf#enabled=1

" NERDTree

"inoremap <C-space> <C-x><C-o>
"inoremap <C-@> <C-Space>

set relativenumber			" Show line relative numbers
set number				" Show line numbers
set wildmenu				" Enables wild menu
set wildmode=longest:full,full		" Sets wild mode
set tabstop=4                         	" Redefine tab as four spaces
set softtabstop=4                     	" Number of spaces in tab when editing
set shiftwidth=4                      	" To change the number of space characters inserted for indentation
set autoindent                        	" Auto indent
set smartindent                       	" Does the right thing (mostly) in programs
set encoding=UTF-8			" Sets text file format encoding
set nowrap				" Disable line wrapping
set backspace=indent,eol,start		" Sets backspace

set background=dark			"
syntax on				" Enables syntax
"set termguicolors		" Enables truecolor
set t_Co=256			" Needed for Terminal Windows..

" Darcula (Jetbrains) color scheme
colorscheme darcula			"

" GruvBox 8 color scheme
"colorscheme gruvbox8			"

" Oceanic-Next color scheme
let g:oceanic_gutter_like_bg=0		" 0: Gutter is sligthly darker
let g:oceanic_transparent_bg=0		" 0: Use opaque background color
let g:oceanic_bold=0			" 1: Make certain text items bold
let g:oceanic_italic_comments=1		" 0: Comments are not italic
"colorscheme oceanicnext		"
