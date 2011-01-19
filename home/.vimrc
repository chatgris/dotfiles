set nocompatible
set history=400
set sh=/bin/zsh
set encoding=utf-8
set fileencoding=utf-8
set viminfo='20,\"500,h

" Pour que le backspace fonctionne convenablement
set backspace=indent,eol,start
set mouse=a
set mousehide

" mapleader
let mapleader = "!"
let g:mapleader = "!"

" Recharger et éditer le .vimrc
nmap <leader>s :source ~/.vimrc<cr>
nmap <leader>e :e! ~/.vimrc<cr>


"" Interface
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

set laststatus=2

syntax on
syntax sync fromstart
autocmd BufEnter * :syntax sync fromstart

set t_Co=256
set background=dark
colorscheme xoria256

if has("gui_running")
    set guifont=Dejavu\ Sans\ Mono\ 10
    set columns=130
    set lines=55
    set guioptions=acei
endif

set autoindent
set smartindent

set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

" Supprime les espaces de fin de ligne
nmap <leader>s :%s/\s\+$//e<cr>

" La complétion intelligente
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType c,cpp,java,javascript,python,xml,xhtml,html set shiftwidth=2


autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Buffers
set hidden
set wmh=0
set splitright

" Buffer précédent/suivant
noremap <C-tab> :bp!<cr>
noremap <tab> :bn!<cr>


" Fichiers / Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set acd             " Va au répertoire du fichier en cours d'édition
set autoread        " recharge auto quand un fichier est modifié
set autowrite       " sauvegarde auto quand on quitte ou qu'on change de buffer

" cf :help backup
set nobackup
set writebackup
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/swap

" Le répertoire courant est celui du fichier du buffer courant
"autocmd BufEnter * :lcd %:p:h
set autochdir

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
