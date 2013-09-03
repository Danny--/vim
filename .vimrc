syntax on
filetype off

filetype plugin indent on

set autoindent
set ts=2
set shiftwidth=2
set expandtab

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
set showbreak=↪

match ErrorMsg '\s\+$'

set showmode

set wildmenu
set wildmode=list:longest,full

colorscheme molokai

set bs=2

set nobackup
set nowritebackup
set noswapfile

set so=14

set encoding=utf8

set colorcolumn=80
highlight ColorColumn ctermbg=235

" code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
autocmd BufWinLeave * silent! mkview
autocmd BufWinEnter * silent! loadview

" Removes trailing spaces
function! TrimWhiteSpace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfunction

autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

"""""""""""""""""""""""""""""" Plugins """"""""""""""""""""""""""""""""""""""""

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" pathogen
execute pathogen#infect()

" syntastic
let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': ['html'] }

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'

" YouCompleteMe
let g:ycm_filetype_blacklist = { }

"""""""""""""""""""""""""""""" Mappings""""""""""""""""""""""""""""""""""""""""

let mapleader=","

inoremap jj <Esc>:w<cr>

" TComment
map <Leader>c gcc

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

" code folding
map <Leader>f za
map <Leader>F zR

map dw diw
map dd ddjk
map cw ciw
map cl ddko
map c' ci'
map c" ci"
map d' di'
map d" di"
map c) ci)
map c] ci]
map c} ci}
map d) di)
map d] di]
map d} di}

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
