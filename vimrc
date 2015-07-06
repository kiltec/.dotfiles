set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Additional plugins
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EDITOR CONFIG
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugins
filetype plugin on
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-go
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_highlight_operators = 1
" show a list of interfaces which is implemented by the type
" under your cursor with <leader>s
au FileType go nmap <Leader>s <Plug>(go-implements)

" Open the relevant Godoc for the word under the cursor with
" <leader>gd or open it vertically with <leader>gv
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

" open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

" Run various commands
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>e <Plug>(go-rename)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COMMANDS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Save when having forgot to edit as su
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command Wq :execute ':W' | :q
command WQ :Wq
