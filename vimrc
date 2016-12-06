" ---*--- NOTICE ---*---
" 1. When ~/.vimrc exists, this file will disable. 
"    Please use this file to replace ~/.vimrc
" 2. This file will be loaded prior to other plugins
" echo "~/.vim/vimrc"

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'CmdlineComplete'
Plugin 'matchit.zip'
Plugin 'ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'

""" add plugins at here

call vundle#end()            " required
filetype plugin indent on    " required
