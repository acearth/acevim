function! ShowConflict(fileName)
	echo "ERROR: Failed to load configured runtime"
	echo "The file '~/.vim/vimrc' is conflicted with ".a:fileName
	echo "Please remove ".a:fileName
	echo "Or some features would be abnormal"
endfunction


if !empty(glob("~/.vimrc"))
	call ShowConflict("~/.vimrc")
elseif !empty(glob("~/_vimrc"))
	call ShowConflict("~/_vimrc")
endif
