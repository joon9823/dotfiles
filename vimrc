" vim-plug
call plug#begin('~/.vim/plugged')
let g:plug_url_format = 'git@github.com:%s.git'

" edit
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rsi'
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }

" git
Plug 'tpope/vim-fugitive' " this is not working under msys2

" lang
Plug 'tpope/vim-dispatch'

" clojure
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kovisoft/paredit', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'

" ruby
Plug 'tpope/vim-bundler'

" lang
Plug 'derekwyatt/vim-scala'

" browsing
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'

" look and feel
Plug 'junegunn/seoul256.vim'

call plug#end()

" look and feel
let g:seoul256_background = 233
colorscheme seoul256

" basic settings
syntax on
set autoindent
set noswapfile
set smartindent
set lazyredraw
set laststatus=2
set showcmd
set backspace=indent,eol,start
set whichwrap=b,s
set shortmess=aIT
set hlsearch 
set incsearch
set hidden
set ignorecase smartcase
set wildmenu
set tabstop=2
set shiftwidth=2
set expandtab smarttab
set scrolloff=5
set encoding=utf-8
set nojoinspaces
set autoread
set clipboard=unnamed
set nocursorline
set ruler

" <leader> as space
let mapleader = ' '
let maplocalleader = ' '

" escape
inoremap jj <Esc>l
inoremap kk <Esc>l
" xnoremap jk <Esc>
" cnoremap jk <C-c>

" move in insert mode
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k

" move lines
nnoremap <silent> <M-k> :move-2<cr>
nnoremap <silent> <M-j> :move+<cr>
xnoremap <silent> <M-k> :move-2<cr>gv
xnoremap <silent> <M-j> :move'>+<cr>gv
xnoremap > >gv " indent
xnoremap < <gv " dedent

" qq to record, Q to replay
nmap Q @q

" circular windows navigation 
nnoremap <tab> <c-w>w

" save
inoremap <C-s> <esc>:update<cr>
nnoremap <C-s> :update<cr>

" quit
inoremap <C-q> <esc>:q<cr>
nnoremap <C-q>     :q<cr>
vnoremap <C-q>     <esc>
nnoremap <Leader>q :q<cr>

" dispatch
inoremap <F6> <esc>:update<cr>:Dispatch<cr>
nnoremap <F6> :update<cr>:Dispatch<cr>

" some unimparied 
nnoremap [q :cprev<cr>
nnoremap ]q :cnext<cr>
nnoremap [b :bprevious<cr>
nnoremap ]b :bnext<cr>

" quickfix
nnoremap <Leader>c :cc<cr>

" clear the highlighting
nnoremap <silent> <C-l> :nohlsearch<CR>

" vim-easy-align
xmap <Enter> <Plug>(EasyAlign)

" NERD Tree shortcuts
inoremap <F10> <esc>:NERDTreeToggle<cr>
nnoremap <F10> :NERDTreeToggle<cr>

" vim-fugitive
nmap <Leader>g :Gstatus<cr>gg<c-n>
nnoremap <Leader>p :Gpush<cr>

" ruby
autocmd FileType ruby let b:dispatch = 'bundle exec rspec %:p'

"clojure
autocmd FileType clojure RainbowParentheses
autocmd FileType clojure xnoremap <Leader><Leader> :Eval<CR>
autocmd FileType clojure nnoremap <Leader><Leader> :Eval<CR>
let g:paredit_smartjump = 1
