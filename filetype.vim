" This script used for detect file type
echo '~/.vim/filetype.vim'

if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
	" au! BufRead,BufNewFile *.mine		setfiletype mine
	" au! BufRead,BufNewFile *.xyz		setfiletype drawing
augroup END
