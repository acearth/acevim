"=====================================================
" 	FileName: 	.vimrc
" 	Authur 	: 	Arthur
" 	Version : 	0.0.3
" 	Email 	: 	arthur4it@gmail.com
" 	Blog 	: 	blog.csdn.net/al5hn
"=====================================================
"
"let $VIM=/usr/local/share/vim
"let $VIMRUNTIME=$VIM/7.4.488
set guifont=Anonymice\ Powerline
set encoding=utf-8
"
"noremap=no map recursively,in insert mode
"nnoremap- no mapping recursively in normal mode
nnoremap<leader>ev :vsplit $MYVIMRC<cr>
"for insert " " on zhe zone
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
"for change to character case of the word 
imap <c-u> <esc>viw~A

"change paste status by F7(on mac ,real F7 is fn+F7)
set pastetoggle=<F7>
"------------------------for vundle::plugin Management-------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim  " ---runtime path //maybe changed
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"____________________________________________________________
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'


Plugin 'DoxygenToolkit.vim'
let g:DoxygenToolkit_briefTag_pre="@synopsis  "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="--------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Arthur Ace(Xiaoqiang AN)"
let g:DoxygenToolkit_licenseTag="GPL 2.0"

let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

Plugin 'The-NERD-tree'

"Powerline --enhanced status column
"Bundle 'Lokaltog/vim-powerline'
"set guifont=PowerlineSymbols\ for\ Powerline
"set nocompatible
"set laststatus=2
"set t_Co=256 "make term use 256 colors
"let g:Powerline_symbols='fancy'

"test for Nerd commenter
Plugin 'The-NERD-Commenter'
let mapleader="," " make Nerd commenter leader is ',' than '\'

"____________________________________________________________
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"-------------------General Configuration---------------------
set nu "line number 
set ruler "show line/column info on the right bottom of screen
set hls "make search results highlighted
set incsearch "make vim match search result in every typed sequence
set history=999 "change default history command from 20 to 999
set showmatch "when insert a bracket, auto jump over it, see help
set cursorline "show underline  on the line of cursor occupied.
set ignorecase "ignore case when search 
syntax on

set showcmd "show cmd in normal mode on the right line of bottom
filetype on "monitor file type
filetype indent on "different indent method in differend file types.
filetype plugin on "allow plugin on different file types.

"---Setting for diffrent file type
if has("autocmd")
	filetype on
	autocmd FileType python setlocal ts=4 sts=4 sw=4 
	autocmd FileType ruby setlocal ts=2 sts=2 sw=2 et "et=expandtab
	autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noet
	autocmd FileType c setlocal ts=4 sts=4 sw=4 noet cindent foldcolumn=3 "fold level(?) indicator at window left
	autocmd FileType cpp setlocal ts=4 sts=4 sw=4 noet cindent foldcolumn=3 
endif

set foldcolumn=2 "fold indicator at window left
"set foldenable "in auto fold mode, ensure it
"set foldmethod=syntax "fold on content of {}
"set foldmethod=indent " fold based on indent level
"  set foldlevel=2 " indent leve less than 2 will result in non-fold
"

