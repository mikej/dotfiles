set nocompatible

filetype plugin indent on
 
syntax on
set number
set relativenumber
set hlsearch
set showmatch " when a bracket is inserted, briefly jump to the matching one
set matchtime=2 " time for showmatch in 10ths of a sec, default is 5
set incsearch
set ignorecase
set autoindent
set history=1000
set cursorline
set expandtab

set shiftwidth=4
set tabstop=4
set softtabstop=4

" when splitting put new window below or right of current window
set splitbelow
set splitright

" always display status bar
set laststatus=2

packadd minpac
call minpac#init()

call minpac#add('lifepillar/vim-solarized8')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('itchyny/lightline.vim')
call minpac#add('k-takata/minpac', {'type':'opt'})

" minpac commands:
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

set termguicolors
colorscheme solarized8
