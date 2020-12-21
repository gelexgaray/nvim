" Carga de plugins por medio de vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Cambiar el tema de color, sobreescribiendo algunos colores
colorscheme monokai

" Tabla en http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
autocmd ColorScheme * highlight ColorColumn ctermbg=235 guibg=#2c2d27
autocmd ColorScheme * highlight SpellBad cterm=underline,bold ctermfg=9 ctermbg=0

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

" Posición dentro del documento
set ruler
let &colorcolumn=join(range(73,80),",")

" Ratón
set mouse=a

" Pencil 
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({'wrap': 'soft'})
  autocmd FileType text         call pencil#init()
augroup END
set statusline=%<%f\ %h%m%r%w\ \ %{PencilMode()}\ %=\ col\ %c%V\ \ line\ %l\,%L\ %P
set rulerformat=%-12.(%l,%c%V%)%{PencilMode()}\ %P
let g:pencil#mode_indicators = {'hard': 'H', 'auto': 'A', 'soft': 'S', 'off': '',}

" AutoComplPop
let g:acp_autoselectFirstCompletion = 1
augroup AutoComplPop
  autocmd!
  autocmd FileType markdown,mkd AcpLock
  autocmd FileType text         AcpLock
augroup END

" Airline extra
set t_Co=256
set noshowmode
set laststatus=2
let g:airline#extensions#default#section_truncate_width = {
    \ 'warning': 80,
    \ 'error': 80,
    \ 'x': 80,
    \ 'y': 80}
let g:airline_powerline_fonts = 1
let g:airline_mode_map = {
    \ 'c': 'C',
    \ 'n': 'N',
    \ 'V': 'V',
    \ 'i':'I'}
let g:airline_section_z = '%2l/%L☰%2v'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#wordcount#enabled = 0
let g:airline_skip_empty_sections = 1

" Other
set number
