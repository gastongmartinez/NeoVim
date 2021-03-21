#!/usr/bin/env bash

# Instalar vim-plug
if [ ! -f ~/.config/nvim/autoload/plug.vim ];
then
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Creacion de directorios
mkdir -p ~/.config/nvim/general
mkdir -p ~/.config/nvim/keys
mkdir -p ~/.config/nvim/vim-plug

# Copiar configuracion
PWD=$(pwd)
ln -sf "$PWD"/general.vim ~/.config/nvim/general/general.vim
ln -sf "$PWD"/mappings.vim ~/.config/nvim/keys/mappings.vim
ln -sf "$PWD"/plugins.vim ~/.config/nvim/vim-plug/plugins.vim  
ln -sf "$PWD"/init.vim ~/.config/nvim/init.vim

# Instalar Plugins
nvim -c "PlugInstall" -c "qall"

# Componentes adicionales
if [ -z "$(pacman -Qs python-pip)" ] > /dev/null ;
then
  sudo pacman -S python-pip --noconfirm --needed
fi
if [ -z "$(pacman -Qs npm)" ] > /dev/null ;
then
  sudo pacman -S npm --noconfirm --needed
fi
python -m pip install --user --upgrade pynvim
sudo npm install -g neovim

# Instalacion de extensiones
echo -e "\nAbriendo NeoVim para instalar extensiones CoC\n"
sleep 3

nvim -c "CocInstall coc-python coc-snippets coc-vimlsp coc-sh coc-diagnostic coc-clangd coc-css coc-eslint coc-html coc-json coc-markdownlint coc-powershell coc-yaml coc-marketplace"
