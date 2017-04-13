" ---*--- NOTICE ---*---
" 1. If ~/.vimrc exists, this file will be disabled. So you need to remove the file: ~/.vimrc
" 2. This file will be loaded prior to other plugins

echo "VIMRC"

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
