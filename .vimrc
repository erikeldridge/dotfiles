call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
call plug#end()

" syntax highlighting
syntax enable
set background=dark
colorscheme solarized

" tabs to spaces
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" split window config
set splitbelow
set splitright
