"let $VIM=/usr/local/share/vim
"let $VIMRUNTIME=$VIM/7.4.488
"
"noremap::no map recursively, in insert mode
"nnoremap::no mapping recursively in normal mode
"--Question -- nnoremap<leader>ev :vsplit ~/.vimrc<cr>
set encoding=utf-8
syntax on
" make backspace ENABLE in AUTOINDENT
 set backspace=eol,start,indent
 "-- key binding
"change paste status by F7(on mac ,real F7 is fn+F7)
set pastetoggle=<F7>
"<C-u> move back half screen 
"<C-l> redraw and clean screen
nnoremap <C-l> :<C-u>nohlsearch<CR><C-l>

" load Vundle plugins settings
source ~/.vim/vundleConfig.vim

"--General Configurations--
set number
set ruler "show line/column info on the stateLine
set hlsearch "let search results highlighted 
set incsearch
set history=999  "history command recorded
set showmatch  "when a bracket is inserted, briefly jump to the matching one
set cursorline "show the line of cursor occupied
set showcmd  "show command in normal mode on the right of stateLine

if has("autocmd")
	autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noet
endif
"set foldcolumn=2
"set foldenable "in auto fold mode, ensure it
"set foldmethod=syntax "fold on the content of {}
"set foldmethod=indent "fold based on indent level
"set foldlevel=2 "indent level less than 3 will not folded

