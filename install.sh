#!/bin/sh

mkdir -p ~/.vim/
touch ~/.vimrc

#system clipboard
sudo apt-get install vim-gnome
#nerdtree
unzip nerdtree.zip -d ~/.vim
#ctags
sudo apt-get install exuberant-ctags
#taglist
unzip taglist_45.zip -d ~/.vim
#cscope
sudo apt-get install cscope
wget http://cscope.sourceforge.net/cscope_maps.vim -O ~/.vim/plugin/cscope_maps.vim
#omnicppcompelete
unzip omnicppcomplete-0.41.zip -d ~/.vim 

#vim server
server=VIM_IDE_FISH
vim -es --servername $server&

echo "waiting for $server"

while true
do
	name=`vim --serverlist | grep $server`
	if [ "$server" = "$name" ]; then
		echo "waiting end, vim server started"
	    break
	else
		echo "waiting, name=$name"
		sleep 1
	fi
done

#supertab
vim --servername $server --remote supertab.vmb
vim --servername $server --remote-send '<C-\><C-N>:so %<CR>'
#refresh doc
vim --servername $server --remote ~/.vim/doc
vim --servername $server --remote-send '<C-\><C-N>:helptags.<CR>'

vim --servername $server --remote-send '<C-\><C-N>:q<CR>'

cat .vimrc >> ~/.vimrc

echo "install complete"
