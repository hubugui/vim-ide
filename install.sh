#!/bin/sh

mkdir -p ~/.vim/
touch ~/.vimrc

vim -es --servername VIM_IDE &

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

#supertab
vim --servername VIM_IDE --remote supertab.vmb
vim --servername VIM_IDE --remote-send '<C-\><C-N>:so %<CR>'

#refresh doc
vim --servername VIM_IDE --remote ~/.vim/doc
vim --servername VIM_IDE --remote-send '<C-\><C-N>:helptags. %<CR>'

vim --servername VIM_IDE --remote-send '<C-\><C-N>:q %<CR>'
cat .vimrc >> ~/.vimrc
