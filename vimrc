syntax on

set ruler
set relativenumber
set nowrap

" Swap / Back up / Undo file settings
"set noswapfile
"set undodir=~/.vim/undodir
"set backupdir=~/.vim/.backup//
set nobackup
set undodir=~/.vim/.undo//
set directory=~/.vim/.swp//

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

" Window management
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>


" Install vim-plug if not downloaded
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark
