# Instalar vim-plug
if (Not (Test-Path -Path "$env:LOCALAPPDATA/nvim-data/site/autoload/plug.vim" -PathType Leaf)) {
    Invoke-WebRequest -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
        New-Item "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
}

# Creacion de directorios
$DirList = @(
    "$env:LOCALAPPDATA/nvim/general"
    "$env:LOCALAPPDATA/nvim/keys"
    "$env:LOCALAPPDATA/nvim/vim-plug"
)
ForEach ($Dir in $DirList) {
    $Dir = $Dir.TrimEnd()
    if (Not (Test-Path -Path $Dir -PathType Container)) {
        New-Item -Path $Dir -ItemType Directory
    }
}

# Copiar configuracion
New-Item -ItemType SymbolicLink -Path "$PSScriptRoot/general.vim" -Target "$env:LOCALAPPDATA/nvim/general/general.vim"
New-Item -ItemType SymbolicLink -Path "$PSScriptRoot/mappings.vim" -Target "$env:LOCALAPPDATA/nvim/keys/mappings.vim"
New-Item -ItemType SymbolicLink -Path "$PSScriptRoot/plugins.vim" -Target "$env:LOCALAPPDATA/nvim/vim-plug/plugins.vim"
New-Item -ItemType SymbolicLink -Path "$PSScriptRoot/init.vim" -Target "$env:LOCALAPPDATA/nvim/init.vim"

# Instalar Plugins
nvim -c "PlugInstall" -c "qall"

# Instalar Dependencias
pip install pynvim
npm install -g neovim


# Instalacion de extensiones
Write-Output "Abriendo NeoVim para instalar extensiones CoC"
Start-Sleep -s 3

nvim -c "CocInstall coc-python coc-snippets coc-vimlsp coc-sh coc-diagnostic coc-clangd coc-css coc-eslint coc-html coc-json coc-markdownlint coc-powershell coc-yaml coc-marketplace"
