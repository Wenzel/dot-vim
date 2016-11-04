"-----------------------------
"           PLUG
"-----------------------------
    set nocompatible " be iMproved, required
    filetype off     " required
    call plug#begin('~/.vim/plugged')

    " PLUGINS
    "----------------
        Plug 'tpope/vim-sensible'
        " Nerdtree
        Plug 'scrooloose/nerdtree'
        " Docker syntax
        Plug 'ekalinin/Dockerfile.vim'
        " YAML
        Plug 'chase/vim-ansible-yaml'
        Plug 'stephpy/vim-yaml'
        " Jinja
        Plug 'lepture/vim-jinja'
        " vim airline
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        " CtrlP
        Plug 'kien/ctrlp.vim'
        " colorschemes
        Plug 'flazz/vim-colorschemes'

    filetype indent on " load filetype specific indent files
    call plug#end()

"-----------------------------
"         DISPLAY
"-----------------------------
    " Coloration syntaxique
    syntax enable
    colorscheme solarized
    " surbrillance de la 80 eme colonne
    set colorcolumn=80
    " Numéros des lignes
    set number
    " Afficher les commandes partielles
    set showcmd
    " Montrer le mode courant
    set showmode
    " toujours montrer la barre de status dans toutes les fenêtres
    set laststatus=2
    " whitespace characters
    set list
    " ne pas monter hightlight ()
    let loaded_matchparen = 1
    " highlight position curseur
    set cursorline
    " redraw only when needed
    set lazyredraw

    " MENU
    "----------------
        " Complete files like a shell
        set wildmode=list:longest
        " affiche menu de completion
        set wildmenu

"-----------------------------
"         BEHAVIOUR
"-----------------------------
    " Permet d'ouvrir un autre buffer sans avoir à enregistrer le buffer courant
    set hidden

    " Comportement de backspace
    set backspace=indent,eol,start

    " Necessaire pour montrer les glyphes dans powerline
    set encoding=utf-8

    " Type de fichiers par defaut
    set ff=unix

    " BACKUPS
    "------------
        set nobackup
        set nowb
        set noswapfile

    " INDENTATION
    "------------- 
        " Indentation automatique
        set autoindent
        " nombre d'espace pour afficher TAB lors de l'affichage d'un fichier
        set tabstop=4
        " Nombre d'espaces inserées lors de l'appui sur TAB
        set softtabstop=4
        " Nombres d'espace inserées lors de l'utilisation de < >
        set shiftwidth=4
        " tabulation en espaces
        set expandtab
        " transformer les tabulations existantes en espaces
        retab

    " SEARCH
    "---------------
        " Montrer en surbrillance les resultats
        set hlsearch
        " Montrer les correspondances trouvées pendant la frappe
        set incsearch
        " Ignorer la casse sauf s'il y a une majuscule dans le pattern
        set ic
        " Regexp facile
        set magic




"----------------------------------
"       KEYBOARD SHORTCUTS
"----------------------------------
    " Clavier Qwerty comme Azerty
    noremap ; :
    " switcher facilement entre les buffer
    map <Space> :bnext<CR>
    " paste
    set pastetoggle=<F4>
    " Nerdtree focus
    map <silent> <F5> :NERDTreeFocus<CR>
    map <silent> <F8> :NERDTree<CR>
    map <silent> <F9> :NERDTreeClose<CR>

" Markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown

"---------------------------------
" SPECIFIC PLUGIN CONFIGURATION
"---------------------------------
    " Powerline fonts
    let g:airline_powerline_fonts = 1
    " Empecher le lag de rafraichissement de powerline d'1 seconde lors de
    " l'appui sur la touche ESC
    if ! has('gui_running')
        set ttimeoutlen=10
        augroup FastEscape
            autocmd!
            au InsertEnter * set timeoutlen=0
            au InsertLeave * set timeoutlen=1000
        augroup END
    endif

    " NERDTree
    " Start Nerdtree if no file has been specified
    " autocmd StdinReadPre * let s:std_in=1
    " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    " Start Nerdtree auto at startup
    " autocmd vimenter * NERDTree
    " Go to previous (last accessed) window.
    " autocmd VimEnter * wincmd p
