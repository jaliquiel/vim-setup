syntax on

set ruler
set relativenumber

" Whitespace / Indents
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Searching
set incsearch
set ignorecase
set smartcase

" Mappings
inoremap jj <Esc>
noremap <CR> o<Esc>
"nmap <S-Enter> O<Esc>


let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
