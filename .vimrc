" PlugInstall Start                                                                                                                                                                                                                       
call plug#begin('~/.vim/plugged')
" Install NERDTree
Plug 'https://github.com/preservim/nerdtree'
Plug 'junegunn/vim-easy-align'
" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" PlugInstall end
call plug#end()

" enable syntax highlighting
syntax enable

" show line numbers
set number
" set tab = 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" tabs into spaces
set expandtab

" when << or >> shift lines by 4 spaces
set shiftwidth=4

" show visual line under the cursor's current line
set cursoreline

" show matching part for [], {}, ()
set showmatch

" enable Python syntax highliting features
let python_highlight_all = 1
" scrolloff
set scrolloff=20

