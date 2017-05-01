" === plugins ===
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'mtth/scratch.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'takac/vim-hardtime'
call plug#end()

" === functions ===
" credit: http://vim.wikia.com/wiki/Jumping_to_previously_visited_locations#Using_a_script_to_select_a_jump_in_the_list
function! GotoJump()
  jumps
  let j = input("Please select your jump: ")
  if j != ''
    let pattern = '\v\c^\+'
    if j =~ pattern
      let j = substitute(j, pattern, '', 'g')
      execute "normal " . j . "\<c-i>"
    else
      execute "normal " . j . "\<c-o>"
    endif
  endif
endfunction
 
" syntax highlighting
syntax enable
set background=dark
colorscheme solarized

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

" === navigation ===
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

" leader
let mapleader = ","
nnoremap <leader>a :Ack<Space>
nmap <Leader>j :call GotoJump()<CR>
nnoremap <leader>s :Scratch<CR>
nnoremap <leader>+ :res +10<CR>
nnoremap <leader>- :res -10<CR>
