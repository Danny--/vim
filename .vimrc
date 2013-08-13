syntax on

filetype plugin indent on

set autoindent
set ts=2
set shiftwidth=2
set expandtab
set nocompatible

set showmatch

set ignorecase
set hlsearch
set incsearch

set cursorline

set smartcase

set mouse=a

set vb

set ruler

set laststatus=2

set number

set list listchars=tab:»·,trail:·

set showmode

set wildmenu
set wildmode=list:longest,full

colorscheme molokai

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:SuperTabDefaultCompletionType = "<c-n>"

set bs=2

set nobackup
set nowritebackup
set noswapfile

execute pathogen#infect()

let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': ['html'] }

"""""""""""""""""""""""""""""" Mappings """""""""""""""""""""""""""""""""""""

let mapleader=","

inoremap jj <Esc>:w<cr>

inoremap <Leader>q <Esc>:wq<cr>
inoremap <Leader>w <Esc>:wa<cr>
map <Leader>q <Esc>:wq<cr>
map <Leader>w <Esc>:wa<cr>

inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

" Ruby / Rails

map <Leader>bi :!bundle install;bundle update;bundle install<cr>
map <Leader>t :!rspec spec<cr>

inoremap <% <%%><Left><Left><Space><Left>

inoremap do<cr> do<cr>end<Esc>ko
