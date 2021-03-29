" Install PlugInstall before getting into 
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Call the .vimrc.plug file
source .vimrc.plug

" enable syntax highlighting
syntax enable

" Settung TabLineSel Color
hi TabLineSel ctermfg=Black ctermbg=Green

" Setting Relative Numbers
set relativenumber

" set tab = 4 spaces
set ts=4

" Right And Left Screen Columns
set sidescrolloff=10

" Enable line wrap
set wrap

" Display command line's tab complete options as menu
set wildmenu

" Set title for file
set title

" Enable mouse
set mouse=a

" Always show cursor position
set ruler

" Automatically re-read files if unmodified inside Vim
set autoread


" Set maxtabs
set tabpagemax=10

" indent when moving to the next line while writing code
set autoindent

" tabs into spaces
set expandtab

" when << or >> shift lines by 4 spaces
set shiftwidth=4

" show visual line under the cursor's current line
set cursorline

" show matching part for [], {}, ()
set showmatch

" enable Python syntax highliting features
let python_highlight_all = 1

" scrolloff
set scrolloff=20

" Display Options
set showcmd

" Set Encoding to UTF-8
set encoding=utf-8

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Igore case when searching
set ignorecase

" Automatically switch search to case-sensitive when search query contains an uppercase letter.
set smartcase

" NERDTree configs 
let g:NERDTreeWinPos = "Left"
let g:NERDTreeWinSize = 60
autocmd vimenter * | NERDTree
" autocmd vimenter * if !argc() | NERDTree | endif




