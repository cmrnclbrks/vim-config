set nocompatible
filetype off

" Set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" --- Plugins ---

" Lets Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Provides auto-completers for Python
Bundle 'Valloric/YouCompleteMe'

" Provides syntax checking and highlighting
Plugin 'vim-syntastic/syntastic'

" Auto-braces
Plugin 'Raimondi/delimitMate'

" Enables PEP 8 checking
Plugin 'nvie/vim-flake8'

" Color schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ErichDonGubler/vim-sublime-monokai'

" File browsing tree
Plugin 'scrooloose/nerdtree'

" File browsing tabs
Plugin 'jistr/vim-nerdtree-tabs'

" Updated status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Enables the use of git within VIM
Plugin 'tpope/vim-fugitive'

call vundle#end()

" --- General Settings ---

filetype plugin indent on
let python_highlight_all=1
syntax on
set backspace=indent,eol,start
set clipboard=unnamedplus
set ruler
set number
set showcmd
set incsearch
set hlsearch
set hidden
set noswapfile

" Code folding
set foldmethod=indent
set foldlevel=99

" Auto-expanding
let delimitMate_expand_cr = 1
filetype indent plugin on

" --- Auto-Complete Settings ---

let g:ycm_autoclose_preview_window_after_completion=1

" --- Remaps ---

" Split navigation 
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Tab navigation
map <F2> :NERDTreeTabsToggle<CR>
nnoremap <F4> gt
nnoremap <F3> gT

" --- Color Settings ---

set background=dark
colorscheme sublimemonokai

let g:airline_theme='dark_minimal'

" --- File Browsing Settings ---

let NERDTreeIgnore=['\.pyc$', '\~$']
