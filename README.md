# VIM CONFIG
This is my vim config, available for Ubuntu.

# Installation
1. Install Vundle at first
2. Backup ~/.vimrc and remove this file
3. mv this folder(.vim) into your home folder, e.g. ~/.vim
4. $ vim +PluginInstall +qall

# File structure
This is a list of directories which will be searched for runtime files:
filetype.vim  filetypes by file name new-filetype
scripts.vim   filetypes by file contents new-filetype-scripts
autoload/     automatically loaded scripts autoload-functions
colors/       color scheme files :colorscheme
compiler/     compiler files :compiler
doc/          documentation write-local-help
ftplugin/     filetype plugins write-filetype-plugin
indent/       indent scripts indent-expression
keymap/       key mapping files mbyte-keymap
lang/         menu translations :menutrans
menu.vim      GUI menus menu.vim
pack/         packages :packadd
plugin/       plugin scripts write-plugin
print/        files for printing postscript-print-encoding
spell/        spell checking files spell
syntax/       syntax files mysyntaxfile
tutor/        files for vimtutor tutor


# Configuration loading order
filetype.vim
vimrc
filetype.vim
plugin/
** You can use ```vim --startuptime vimlog``` to see configuration loading order

