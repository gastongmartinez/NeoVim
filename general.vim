set vb t_vb=         " Deshabilitar beep / flash
syntax on            " Habilita resaltado sintactico
set number           " Muestra el numero de linea
set relativenumber   " Indica el numero de linea en forma relativa a la posicion del cursor
set cursorline       " Resalta la linea actual
set autoindent       " Indentacion automatica
set tabstop=4        " Reemplaza tab con 4 espacios
set shiftwidth=4     " Establece el ancho de las indentaciones igual al tamaño de un tab
set smarttab         "
set softtabstop=4    "
set mouse=a          " Habilita el soporte para mouse
set ignorecase       " Ignorar 'case' por defecto en busquedas
set smartcase        " Busquedas 'case sensitive' cuando se incluyen caracteres en mayusculas
set encoding=UTF-8   " Codificacion
set nowrap           " Mantener en una linea
set ruler            " Indica numeros de linea y columna

" Reconocimiento de tipo de archivo
filetype on
filetype plugin on
filetype indent on

" Splits a la derecha y abajo
set splitright
set splitbelow