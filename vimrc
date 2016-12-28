"use vundle to manage plugins, required turn file type off and nocompatible
filetype off
set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
"let vundle manage vundle,required
Bundle 'gmarik/vundle'
"my bundles here:
Bundle 'altercation/vim-colors-solarized'
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
Bundle 'bling/vim-airline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'dyng/ctrlsf.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'SirVer/ultisnips'
Bundle 'gcmt/wildfire.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'a.vim'
Bundle 'c.vim'
Bundle 'OmniCppComplete'
Bundle 'minibufexpl.vim'
Bundle 'honza/vim-snippets'
Bundle 'vim-pandoc/vim-pandoc'
Bundle 'vim-pandoc/vim-pandoc-syntax'

"brief help of vundle
  ":BundleList
  ":BundleInstall
  ":BundleSearch
  ":BundleClean
  ":help vundle
"end brief help

"define the precessor of shorcut key, meaning <leader>
let mapleader="\\"

"define routine shortcut
"begin/end of the line
nmap <leader>lb 0
nmap <leader>le $
"copy the selected content to the system clipboard
vnoremap <leader>y "+y
"paste the content of system clipboard to vim
nmap <leader>p "+p
"close current window
nmap <leader>q :q<CR>
"save the content of current window
nmap <leader>w :w<CR>
"save the content of all windows
nmap <leader>WQ :wa<CR>:q<CR>
"exit vim forcefully
nmap <leader>Q :qa!<CR>
"search in the project using CtrlSF
nnoremap <leader>sf :CtrlSF<CR>
"iterate the file buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> b] :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> B] :blast<CR>
"open NERD_Tree
nmap <leader>nt :NERDTreeToggle<CR>

"set the theme of airline
let g:airline_theme='luna'
"set powline fonts
let g:airline_powerline_fonts=1
"enable tabline, could switch between buffers
let g:airline#extentsion#tabline#enabled=1
let g:airline#extentsion#tabline#buffer_nr_show=1

"indent-guide is on when vim startup
let g:indent_guides_enable_on_vim_startup=1
"indent on the secondary level
let g:indent_guides_start_level=2
"stripe width
let g:indent_guides_guide_size=1
"short-cut i to control the on/off the indentations
nmap <silent> <leader>i <Plug>IndentGuidesToggle

"ultiSnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"
let g:UltiSnipsEditSplit="vertical"

"switch between *.h and *.cpp file
nmap <leader>ch :A<CR>
"show *.h or *.cpp in subwindow
nmap <leader>sch :AS<CR>

"show line number, command, status line and so on
set history=1000
set ruler
set number
set showcmd
set showmode
set laststatus=2
set cmdheight=2
set scrolloff=3

"fill space between windows
set fillchars=stl:\ ,stlnc:\ ,vert:\ 

"turn off annoying error sound
set noerrorbells
set novisualbell
set t_vb=

"turn off splash screen
set shortmess=atI

"syntax and theme
syntax on
colorscheme desert
set background=dark
set cursorline
set cursorcolumn

"configure backspace to be able to across two lines
set backspace=2
set whichwrap+=<,>,h,l

"tab and indent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set cindent

"code folding
"based on indent or syntax
set foldmethod=indent
"set foldmethod=syntax
"disable folding when vim startup
set nofoldenable

"file, backup and encoding
set nobackup
set noswapfile
set autoread
set autowrite
set autochdir
set fileencoding=utf-8
set fileformats=unix,dos,mac
filetype plugin on
filetype indent on

"text search and replace
set showmatch
set matchtime=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set magic
set lazyredraw
set nowrapscan
set iskeyword+=_,$,@,%,#,-,.

if has("gui_running")
   colorscheme solarized
endif
set guifont=Dejavu\ Sans\ Mono\ 12
set guioptions=aegic

"use taglist to view the linux source
"must set tags file path
set tags=/usr/src/linux-source-3.13.0/tags
set tags+=/usr/include/tags
set tags+=/home/heluka/kernel-code/tlpi-book/tags
map <C-F12>:!ctags -R --c++-kind=+p --field=+ias --extra=+a -I<CR>

