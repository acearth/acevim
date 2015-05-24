"--for vundle::Plugin Management
set nocompatible
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()
"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'YouCompleteMe'
Plugin 'taglist.vim'

Plugin 'javacomplete'


Plugin 'DoxygenToolkit.vim'
let g:DoxygenToolkit_briefTag_pre="@synopsis "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@returns "
let g:DoxygenToolkit_blockHeader="------------------------------"
let g:DoxygenToolkit_blockFooter="------------------------------"
let g:DoxygenToolkit_authorName="Arthur Ace(XQ.An)"
let g:DoxygenToolkit_licenseTag="GPL 2.0"
let s:licenseTag="Copyright(C)\<enter>"
let s:licenseTag=s:licenseTag."For free\<enter>"
let s:licenseTag=s:licenseTag."All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag=s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

Plugin 'The-NERD-Commenter'
Plugin 'the-NERD-Tree'
call vundle#end() 	 	"required
filetype plugin indent on 	"required
