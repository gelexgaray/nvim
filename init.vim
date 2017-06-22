" Carga de plugins por medio de vim-pathogen
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Cambiar el tema de color
colorscheme zellner

" Opciones de representación de texto
set encoding=utf-8

" Tabulación por defecto
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" Activar plugins/tabulaciones por tipo de archivo
filetype plugin indent on

" Activar menú con F10
if !has("gui_running")
    source $VIMRUNTIME/menu.vim
    set wildmenu
    set cpoptions-=<
    set wildcharm=<C-Z>
    nmap <F10> :emenu <C-Z>
endif

" Ctrl + Flechas para mover dentro de párrafo
nnoremap <C-Down> gj
nnoremap <C-Up> gk
vnoremap <C-Down> gj
vnoremap <C-Up> gk
inoremap <C-Down> <C-O>gj
inoremap <C-Up> <C-o>gk

" Números de línea
"set number

" Cuando se ejecuta por ssh, no interceptar ratón
"if exists("$SSH_CONNECTION")
"	set mouse=
"else
"	set mouse=a
"endif
set mouse=a

