" This script used for detect file type, loaded prior to VIMRC

if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
	" au! BufRead,BufNewFile *.xyz		setfiletype drawing
augroup END
