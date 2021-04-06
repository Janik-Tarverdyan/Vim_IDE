" Install PlugInstall before getting into 
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Call the .vimrc.plug file
source ~/.vimrc.plug

" Have Access to copy and past outside from vim
set clipboard=unnamedplus

" enable syntax highlighting
" set term=ansi
syntax enable

" Setting whitespace to be shown
set list
set listchars=tab:>-
" Setting Python space/tab/trail errors on
let python_space_errors = 1
let python_no_trail_space_error = 1
let pytthon_no_tab_space_error = 1


"COLORS 
" SETTING COLORS

" Settung TabLineSel Color
hi TabLineSel ctermfg=Black ctermbg=Green

"  Setting Search Color
hi Search cterm=italic ctermfg=white ctermbg=Blue

hi Identifier ctermfg=white ctermbg=Blue


" Setting Pmenu Colors
hi Pmenu ctermfg=white ctermbg=Green
" Selected Item color
hi PmenuSel ctermfg=white ctermbg=Blue
" scrollbar color
hi PmenuSbar ctermfg=white ctermbg=LightBlue
" scrollbur thumb color
hi PmenuThumb ctermfg=blue ctermbg=LightGreen
" Ended Pmenu Color Settings

" WildMenu Color Settings (Command Suggestions With Tab)
hi WildMenu ctermfg=white ctermbg=blue
hi Menu ctermfg=white ctermbg=red
hi StatusLine ctermfg=LightGreen ctermbg=black

" Settings Todo colors
hi Todo guifg=white guibg=#FF7F50


" END OF SETTING COLORS
""" COLORS
" Setting Relative Numbers
set number relativenumber

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
let g:python3_host_prog='/usr/bin/python3'

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
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize = 60

autocmd vimenter * NERDTree
" autocmd vimenter * if !argc() | NERDTree | endif




