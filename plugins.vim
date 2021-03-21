call plug#begin('~/.config/nvim/autoload/plugged')
    
    Plug 'sheerun/vim-polyglot'                             " Soporte de mejoras sintacticas
    Plug 'scrooloose/NERDTree', { 'on': 'NERDTreeToggle' }  " Manejo de Archivos
    Plug 'rbgrouleff/bclose.vim'
    Plug 'francoiscabrol/ranger.vim'
    Plug 'ryanoasis/vim-devicons'                           " Iconos para NERDTree
    Plug 'jiangmiao/auto-pairs'                             " Pares automaticos '(' '[' '{'
    Plug 'mhinz/vim-startify'                               " Pantalla de presentacion Startify
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " Busqueda    
    Plug 'junegunn/fzf.vim'   
    Plug 'liuchengxu/vim-which-key'                         " Teclas rapidas
    Plug 'lilydjwg/colorizer'                               " Colorizer 
    Plug 'mattn/emmet-vim'                                  " Emmet
    Plug 'vim-airline/vim-airline'                          " Airline
    Plug 'vim-airline/vim-airline-themes'   
    Plug 'justinmk/vim-sneak'                               " Navegacion rapida
    Plug 'plasticboy/vim-markdown'                          " Markdown
    Plug 'suan/vim-instant-markdown'    
    Plug 'neoclide/coc.nvim', {'branch': 'release'}         " COC
    Plug 'prettier/vim-prettier'                            " Prettier
    Plug 'tpope/vim-commentary'                             " Comentar lineas con gcc o gc para descomentar
    Plug 'rafi/awesome-vim-colorschemes'                    " Esquemas de colores (usa en lugar de instalar temas)
    Plug 'majutsushi/tagbar'                                " Visualizador de esquema de clase
    Plug 'tpope/vim-obsession'                              " Guardado y restauracion de sesiones
    Plug 'Yggdroot/indentLine'

call plug#end()