call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible
set nocp
set history=400
set sh=/bin/zsh
set encoding=utf-8
set fileencoding=utf-8
set viminfo='20,\"500,h

" les yeux
syntax on
set t_Co=256
set background=dark
colorscheme xoria256
if !has("gui_running")
  set mouse=a
  set guifont=Dejavu\ Sans\ Mono\ 10
  set columns=130
  set lines=55
  set guioptions=acei
endif
set nu
set numberwidth=1
set ruler
set shm=tToOIA      " Formatage des messages
set showmode        " affiche le mode actuel
set showcmd         " affiche les commandes incomplètes
set wildmenu        " Menu pour la complétion des commandes
set wildmode=list:longest
set wildignore=*.o,*.bak,*.pyc,*.swp,*.jpg,*.gif,*.png

" Silence !
set noerrorbells
set visualbell t_vb=
autocmd GUIEnter * set vb t_vb=

" indent and tabs
set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
" use tab for auto-expansion in menus
set wc=<TAB>

" show a list of all matches when tabbing a command
set wmnu

" Supprime les espaces de fin de ligne
autocmd BufWritePre * :%s/\s\+$//e

" backup
set autoread
set autowrite
set nobackup
set writebackup
set backupdir=$HOME/.backup
set directory=$HOME/.swap

" default encoding
set encoding=utf-8
set fileencoding=utf-8

" detect the type of file
filetype on

" load filetype plugins
filetype plugin on

" load indent files for specific filetypes
filetype indent on

" Perf
set timeout timeoutlen=3000 ttimeoutlen=100
set lazyredraw
set nofsync
" affiche les numéros de ligne sur le coté
set nu!
set showmatch
" tabs
set tabstop=8
set softtabstop=2
set shiftwidth=2
set expandtab
set shiftround
" circular
set wrapscan
set hls
set incsearch
set wmnu

" Buffers
set hidden
set wmh=0
set splitright
noremap <C-tab> :bp!<cr>
noremap <tab> :bn!<cr>
noremap : ,
noremap , :

" supertab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCrMapping = 0
