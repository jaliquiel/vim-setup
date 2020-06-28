syntax on

set ruler
set relativenumber
set nowrap
set encoding=utf-8

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
"nnoremap <leader>h :wincmd h<CR>
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"noremap <leader>l :wincmd l<CR>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" ==========================================
"" Vim-plug Shenanigans
" ==========================================
" Install vim-plug if not downloaded
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Basic functionality improvements
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'inkarkat/vim-ReplaceWithRegister'
" Making things pretty
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'crusoexia/vim-monokai'
call plug#end()

" ==========================================
"" Color Settings
" ==========================================
colorscheme gruvbox
"colorscheme monokai
set background=dark

" ==========================================
"" Vim airline settings
" ==========================================
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_theme='bubblegum'
" let g:airline_right_sep='<'
" let g:airline_left_sep='>'



