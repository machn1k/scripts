""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc
" @machn1k
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
set encoding=utf-8

set ignorecase  " IGNORE CASE IN SEARCH PATTERNS
set number	" SHOW LINE NUMBERS
set ruler	" SHOW POSITION OF CURSOR
set autoindent	" COPY INDENT FROM PREVIOUS LINE
set hlsearch	" HIGHLIGHT SEARCH TERM

set history=300 " REMEMBER THIS MANY LINES OF HISTORY
set wildignore=*.o,*~,*.pyc " IGNORE COMPILED FILES

" --------------- STATUS LINE
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" --------------- NO BACKUPS
set nobackup
set nowb
set noswapfile

" --------------- NO ERROR SOUNDS
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" --------------- COLORSCHEMES
"  blue.vim
"  darkblue.vim
"  default.vim
"  delek.vim
"  desert.vim
"  elflord.vim
"  evening.vim
"  koehler.vim
"  morning.vim
"  murphy.vim
"  pablo.vim
"  peachpuff.vim
"  ron.vim
"  shine.vim
"  slate.vim
"  torte.vim
"  zellner.vim
colorscheme pablo

" --------------- BACKGROUNDS
"  dark
"  light
"set background=dark

" --------------- COMMANDS & COMMENTS
" :%!xxd	HEX EDIT COMMAND
" :%!xxd -r	EXIT HEX EDIT
