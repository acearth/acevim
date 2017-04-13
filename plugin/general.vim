" echo "GENERAL CONFIG LOADED"

set number " show line number                                                                                                                                                                               
set ruler " show line/column info on the stateLine
set hlsearch " enable search results highlight 
set incsearch 
set history=999  " history command recorded
set showmatch  " when a bracket is inserted, briefly jump to the matching one
set cursorline " show the line of cursor occupied set showcmd  " show command in normal mode on the right of stateLine
set autoindent

set encoding=utf-8
set backspace=eol,start,indent
set laststatus=2 " Required for powerline / airline

syntax on

let mapleader=","
function KeyMap()
	nnoremap <F10> :NERDTree<CR>
	nnoremap <F6> :set number!<CR>
	set pastetoggle=<F7>
	nnoremap <F9> :w<CR>:make<CR>
endfunction
call KeyMap()

function FoldSetting()
	set foldcolumn=2
	set foldenable "in auto fold mode, ensure it
	set foldmethod=syntax "fold on the content of {}
	set foldmethod=indent "fold based on indent level
	set foldlevel=2 "indent level less than 3 will not folded
endfunction

"call FoldSetting()
