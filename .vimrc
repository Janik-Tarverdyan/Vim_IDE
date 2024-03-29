let mapleader = ","

" Install PlugInstall before getting into 
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Call the .vimrc.plug file
source ~/.vimrc.plug
" source ~/install.sh

" Have Access to copy and past outside from vim
set clipboard=unnamedplus

" enable syntax highlighting
" set term=ansi
syntax enable

" Setting whitespace to be shown
set list
" 
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

" python def host
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

" Tab maps
map <C-W-P> : tabnew<CR>
" map <C-n> : tabn<CR>
" map <C-b> : tabp<CR>
" End of Tab maps

" ---> YouCompleteMe <--- configs
let g:ycm_key_list_select_completion = [ '<C-n>', '<Down>' ] 
let g:ycm_key_list_previous_completion = [ '<C-p>', '<Up>' ]
let g:SuperTabDefaultCompletionType = '<C-n>'
" End of ---> YouCompleteMe <--- configs

" ---> NERDTree <--- configs 
" map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize = 60
" let g:nerdtree_tabs_smart_startup_focus = 1 
" let g:nerdtree_tabs_autoclose = 1
" let g:nerdtree_tabs_autofind = 1
let NERDTreeIgnore = [ '__pycache__', '\.pyc$', '\.o$', '\.swp',  '*\.swp',  'node_modules/' ]
let NERDTreeShowHidden = 1
map <Leader>r :NERDTreeFind<CR>
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if !isdirectory(argc()) | NERDTree | endif
" && !exists("s:stdn_in") 

" let g:nerdtree_tabs_open_on_console_startup = 1

" End ---> NERDTree <--- configs

" ---> Ultisnips configs <--- 
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" ---> End of Ultisnips configs <---

" ---> Tags autofill <--- configs
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.vue,*.phtml,*.js,*.jsx,*.coffee,*.erb'
" ---> End of Tags autofill<---

" Set automatically open vertical terminal on right side
vert botright term
call term_start('stoponexit', {'term_finish': 'close', })



" Code folding options {
  nmap <leader>f0 :set foldlevel=0<CR>
  nmap <leader>f1 :set foldlevel=1<CR>
  nmap <leader>f2 :set foldlevel=2<CR>
  nmap <leader>f3 :set foldlevel=3<CR>
  nmap <leader>f4 :set foldlevel=4<CR>
  nmap <leader>f5 :set foldlevel=5<CR>
  nmap <leader>f6 :set foldlevel=6<CR>
  nmap <leader>f7 :set foldlevel=7<CR>
  nmap <leader>f8 :set foldlevel=8<CR>
  nmap <leader>f9 :set foldlevel=9<CR>

  " current open
  map fo :foldopen <CR>
  map fc :foldclose <CR>
" }

" Tab navigation
