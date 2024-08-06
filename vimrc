set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EDITOR CONFIG
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remember more commands and search history
set history=10000
set undolevels=1000
set autoindent
set hlsearch
set incsearch
" make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase

" keep more context when scrolling off the end of a buffer
set scrolloff=3
" Enable highlighting for syntax
syntax on
" use emacs-style tab completion when selecting files, etc
set wildmode=longest,list
" make tab completion for files/buffers act like bash
set wildmenu
" Always show current position
set ruler
" Height of the command bar
set cmdheight=1
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
" Show matching brackets when text indicator is over them
set showmatch
" No annoying sound on errors
set noerrorbells
set novisualbell
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set nowrap
set number
" Always show the status line
set laststatus=2
" Enable mouse use in all modes
set mouse=a
" Pasting text into a terminal running Vim with automatic indentation enabled
" can destroy the indentation of the pasted text. Toggles paste modes to be
" able to avoid this behavior.
" see: http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
set pastetoggle=<F2>

" Set default statusline so syntastic won't overwrite it
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COMMANDS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Save when having forgot to edit as su
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command Wq :execute ':W' | :q
command WQ :Wq
