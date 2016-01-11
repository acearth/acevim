#!/bin/sh
# this executable file used to load file from git base folder.
# You should ascertain that the git folder is ~/.vim/
#FROM ~/.vim/vimrc_main --> ~/.vimrc
timestamp=`date +%Y%m%d%H%M`
diff -Nau ~/.vimrc ~/.vim/vimrc_main >~/.vim/historyFiles/vimrc.$timestamp.diff
echo "different been vimrc_main and ~/.vimrc have been saved in ~/.vim/historyFiles/vimrc.$timestamp.diff"
mv ~/.vimrc  ~/.vim/historyFiles/vimrc.$timestamp
if [[ $? -eq 0 ]]; then
	echo "~/.vimrc has been moved to ~/.vim/historyFiles/vimrc.$timestamp"
	cp ~/.vim/vimrc_main ~/.vimrc
	
	echo "~/.vimrc has been set from ~/.vim/vimrc_main"
else
	echo "Setting ".vimrc" failed. Check your file path"
fi
