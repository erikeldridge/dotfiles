call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
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

" split windows
set splitbelow
set splitright

" escape
inoremap jj <ESC>

" ag plugin
let g:ackprg = "ag --vimgrep"

" leader
let mapleader = ","
nnoremap <leader>a :Ack<Space>
nnoremap <leader>f :FZF<CR>
nnoremap <leader>l :vsp .<CR>

