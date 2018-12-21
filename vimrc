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
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript'] }

" rust
Plug 'rust-lang/rust.vim'

call plug#end()

colorscheme nord

" editor
syntax enable
set guifont=JetBrains\ Mono:h14
set linespace=3
set title
set cursorline

set hlsearch
set incsearch

set nu
set nuw=3

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

" prettier
let g:prettier#config#single_quote='true'
let g:prettier#config#trailing_comma='all'

" keymaps
nnoremap <silent> <C-f> :Files<CR>

imap <silent> <C-p> <C-x><C-o>
nmap <silent> <C-q><C-i> <Plug>(TsuquyomiImport)
nmap <silent> gd <Plug>(TsuquyomiDefinition)

" commands
command VC execute ":e ~/.vim/vimrc"
command VR execute "source ~/.vim/vimrc"

