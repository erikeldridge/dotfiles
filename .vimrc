call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'tpope/vim-vinegar' " :bwipe to exit vinegar
Plug 'mtth/scratch.vim'
call plug#end()

" syntax highlighting
syntax enable
set background=dark
colorscheme solarized

" search
set incsearch
set hlsearch

" tabs to spaces
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" split windows
set splitbelow
set splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" escape
inoremap jj <ESC>

" ack
let g:ackprg = "ag --nogroup --nocolor --column"

" leader
let mapleader = ","
nnoremap <leader>a :Ack<Space>
nnoremap <leader>f :FZF<CR>
nnoremap <leader>b :ls<CR>:b<Space>
nnoremap <leader>s :Scratch<CR>
