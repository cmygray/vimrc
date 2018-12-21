set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'wakatime/vim-wakatime'

" editor
Plug 'arcticicestudio/nord-vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/goyo.vim'

" node
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript'] }

" rust
Plug 'rust-lang/rust.vim'


call plug#end()

colorscheme nord

" editor
syntax enable
set title
set cursorline
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=6\x7\<Esc>\\"

set hlsearch
set incsearch

set nu
set nuw=2

set lazyredraw
set showmatch
set wildmenu
set showcmd

set autoindent
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2

" explorer
let g:netrw_browse_split=4

" tsuquyomi
let g:tsuquyomi_shortest_import_path = 1

" prettier
let g:prettier#config#single_quote='true'
let g:prettier#config#trailing_comma='all'

" keymaps
execute "set <A-CR>=\ej"

nnoremap <silent> <C-f> :Files<CR>
inoremap <silent> <C-p> <C-x> <C-o>
nnoremap <silent> gd :TsuDefinition<CR>
nnoremap <silent> gi :TsuImplementation<CR>
nnoremap <esc> :noh<return><esc>
nnoremap <silent> <A-CR> :TsuImport<CR>

