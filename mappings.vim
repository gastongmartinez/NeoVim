" Leader keys
let mapleader=" "

" Combinaciones de teclas
nnoremap <silent> <leader>ec :tabedit $MYVIMRC<CR>    " Acceso rapido a editar configuracion (en nueva solapa)
nnoremap <silent> <leader>rc :source $MYVIMRC<CR>     " Recargar configuracion
inoremap ;; <Esc>                                     " Usar ;; como espace
nnoremap <silent> <leader>tb :TagbarToggle<CR>        " Habilita/deshabilita Tagbar
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <silent> <leader>n :set number! number?<CR>  " Habilita/deshabilita numero de linea
nnoremap <silent> <leader>w :set wrap! wrap?<CR>      " Habilita/deshabilita ajuste de linea
nnoremap <leader>rl :setlocal cursorline!<CR>         " Habilita/deshabilita ajuste de linea

" Buffers
nnoremap <silent> <leader>bb <C-^>                  " toggle buffer (switch between current and last buffer)
nnoremap <silent> <leader>bn :bn<CR>                " go to next buffer
nnoremap <C-l> :bn<CR>  
nnoremap <silent> <leader>bp :bp<CR>                " go to previous buffer
nnoremap <C-h> :bp<CR>
nnoremap <silent> <leader>bd :bd<CR>                " close buffer
nnoremap <silent> <leader>bk :bd!<CR>               " kill buffer
nnoremap <silent> <leader>bl :ls<CR>                " list buffers
nnoremap <silent> <leader>bg :ls<CR>:buffer<Space>  " list and select buffer
nnoremap <silent> <leader>bh :new<CR>               " horizontal split with new buffer
nnoremap <silent> <leader>bv :vnew<CR>              " vertical split with new buffer

" Navegacion de solapas
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt