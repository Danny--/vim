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

set bs=2

set nobackup
set nowritebackup
set noswapfile

set so=14 " Keep cursor away from edges of screen

set encoding=utf8

"""""""""""""""""""""""""""""" Plugins """""""""""""""""""""""""""""""""""""""

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" pathogen
execute pathogen#infect()

" syntastic
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

map <Leader>i <Esc>gg=G

inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

map dw diw
map cw ciw
map cl ddko

" Ruby / Rails

map <Leader>bi :!bundle install;bundle update;bundle install<cr>
map <Leader>t :!rspec spec<cr>

inoremap <% <%%><Left><Left><Space><Left>
inoremap do<cr> do<cr>end<Esc>ko
inoremap def def<cr>end<Esc>ka

" HTML

inoremap <html <html><cr></html><Esc>ko<tab>
inoremap <p <p></p><Left><Left><Left><Left><Space><Left>
inoremap <h1 <h1></h1><Left><Left><Left><Left><Left><Space><Left>
inoremap <li <li><cr></li><Esc>ko<tab>
inoremap <ul <ul><cr></ul><Esc>ko
inoremap <title <title></title><Left><Left><Left><Left><Left><Left><Left><Left><Space><Left>
inoremap <body <body><cr></body><Esc>ko<tab>
inoremap <head <head><cr></head><Esc>ko<tab>
