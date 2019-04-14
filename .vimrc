set nocompatible              " be iMproved, required
filetype off                  " required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerdtree File browser
Plugin 'scrooloose/nerdtree'

" Fugitive git wrapper
Plugin 'tpope/vim-fugitive'

" Airline and themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required for Vundle
filetype plugin indent on    " required for Vundle
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
set showcmd             " show command in bottom bar
set nosmd               " no showmode

syntax enable    " enable syntax processing

set tabstop=4       " number of visual spaces per TAB
set expandtab       " tabs are spaces
set number              " show line numbers
set hlsearch            " highlight matches

"  https://stackoverflow.com/questions/30691466/what-is-difference-between-vims-clipboard-unnamed-and-unnamedplus-settings
"  copy and paste to and from system clipboard
set clipboard=unnamed

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" ctags
set tags=tags;/

" Theme options
set background=dark
let g:solarized_use16 = 1
colorscheme solarized8_high
let g:airline_theme='murmur'
