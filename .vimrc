" vim ~/.vimrc

set nocompatible						" be iMproved, required (for Vundle)
filetype off							" required (for Vundle)

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle, required (for Vundle)
Plugin 'VundleVim/Vundle.vim'

" C#
Bundle 'OmniSharp/omnisharp-vim'
Bundle 'tpope/vim-dispatch'

" All of your Plugins must be added before the following line
call vundle#end()						" required (for Vundle)
filetype indent plugin on				" required (for Vundle)
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList							- lists configured plugins
" :PluginInstall						- installs plugins; append '|' to update or just :PluginUpdate
" :PluginSearch foo						- searches for foo; append '|' to refresh local cache
" :PluginClean							- confirms removal of unused plugins; append '|' to auto-approve removal
"
" See :h vundle for more details of wiki for FAQ
" Put your non-Plugin stuff after this line

" OmniSharp
let g:OmniSharp_timeout=1				" Timeout in seconds to wait for a response from the server
set noshowmatch							" Showmatch significantly slows down omnicomplete
set completeopt=longest,menuone,preview
set splitbelow							" Move preview window (code documentation) to the bottom of the screen
augroup omnisharp_commands
	autocmd!
	autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
augroup END

set updatetime=500
set cmdheight=2

inoremap <C-space> <C-x><C-o>
inoremap <C-@> <C-Space>

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
