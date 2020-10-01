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
inoremap JJ <Esc>
noremap <CR> o<Esc>
"nmap <S-Enter> O<Esc>

let mapleader = " "

" ==========================================
"" Buffer management
" ==========================================

" Show all buffers and then type :b for switching easy
" https://dev.to/iggredible/using-buffers-windows-and-tabs-efficiently-in-vim-56jc
nnoremap <Leader>b :buffers<CR>:buffer<Space>

" Switching to most recent used buffer
" https://stackoverflow.com/questions/5559029/quickly-switching-buffers-in-vim-normal-mode
nnoremap <leader><tab> :b#<cr>

" Not save required when switching buffers
set hidden

" ==========================================
"" Window management
" ==========================================
" Reference for mappings: http://www.agillo.net/simple-vim-window-management/

" Switch between open buffers
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
noremap <leader>l :wincmd l<CR>
" map <c-j> <c-w>j
" map <c-k> <c-w>k
" map <c-h> <c-w>h
" map <c-l> <c-w>l

" Move buffer window to desired position
nnoremap <leader>H :wincmd H<CR>
nnoremap <leader>J :wincmd J<CR>
nnoremap <leader>K :wincmd K<CR>
noremap <leader>L :wincmd L<CR>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" resize buffer window by +/- 3 using arrow keys
noremap <left>  :3wincmd <<cr>
noremap <right> :3wincmd ><cr>
noremap <up>    :3wincmd +<cr>
noremap <down>  :3wincmd -<cr>

" vertical split, split, close, rotate
" noremap <leader>wv :wincmd v<cr>
" noremap <leader>ws :wincmd s<cr>
" noremap <leader>wc :wincmd q<cr>
" noremap <leader>wr <C-W>r

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



