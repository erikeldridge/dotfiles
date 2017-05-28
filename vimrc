" plugins
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'mtth/scratch.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'takac/vim-hardtime'
Plug 'leafgarland/typescript-vim'
call plug#end()

" syntax highlighting
syntax enable
set background=dark
colorscheme solarized
highlight clear SignColumn

" search
set incsearch
set hlsearch
set scrolloff=5

" tabs to spaces
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" split windows
set splitbelow
set splitright

" navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
set relativenumber
set cursorline
let g:hardtime_default_on = 1

" escape
inoremap jj <ESC>

" ack
let g:ackprg = "ag --nogroup --nocolor --column"

" ctrlp
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_working_path_mode = 0

" scratch
let g:scratch_height = 0.5

" leader
let mapleader = ","
nnoremap <leader>a :Ack<Space>
nmap <Leader>j :jumps<CR>
nmap <Leader>m :marks<CR>
nnoremap <leader>s :Scratch<CR>
nnoremap <leader>+ :res +10<CR>
nnoremap <leader>- :res -10<CR>
