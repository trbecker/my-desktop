set nocompatible

call pathogen#helptags()
call pathogen#infect()

let mapleader=","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> ) :bn<CR>
nmap <silent> ( :bp<CR>

set hidden

set nowrap
set tabstop=4
set expandtab
set autoindent
set copyindent
set number
set shiftwidth=4
set shiftround
set smartcase
set smarttab
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells
set nobackup
set noswapfile
set t_Co=256
set bs=2
set colorcolumn=101
set encoding=utf-8

filetype on
filetype plugin indent on

if has('autocmd')
	autocmd filetype python set expandtab
endif

if &t_Co >= 256 || has('gui_running')
	colorscheme ir_black
endif

if &t_Co > 2 || has('gui_running')
	syntax on
endif

set list
set listchars=tab:››,trail:×,precedes:<,extends:>
autocmd filetype html,xml set listchars-=tab:>.

set pastetoggle=<F2>
set mouse=a

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nmap <silent> ,/ :nohlsearch<CR>

set statusline=%<%F%h%m%r%h%w%{fugitive#statusline()}\ %=\ %04l;%02v\ %P
set laststatus=2

set wildmenu
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*,jpg,*.gif,*.png
set wildmode=list:longest

set guioptions-=T

