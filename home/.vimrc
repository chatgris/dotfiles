call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible
set nocp
set history=400
set sh=/bin/zsh
set encoding=utf-8
set fileencoding=utf-8
set viminfo='20,\"500,h

syntax on
set t_Co=256
set background=dark
colorscheme xoria256
set shm=tToOIA
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set wildignore=*.o,*.bak,*.pyc,*.swp,*.jpg,*.gif,*.png"

set noerrorbells
set visualbell t_vb=
autocmd GUIEnter * set vb t_vb=

" backup
set autoread
set autowrite
set nobackup
set writebackup
set backupdir=$HOME/.backup
set directory=$HOME/.swap

" detect the type of file
filetype on

" load filetype plugins
filetype plugin on

" load indent files for specific filetypes
filetype indent on
