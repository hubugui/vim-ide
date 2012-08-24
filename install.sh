mkdir ~/.vim
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

#supertab
#vim supertab.vmb
#:so %

#cd ~/.vim/doc
#vim --servername FILES --remote-silent "helptags."
#cd $OLDPWD

cat .vimrc >> ~/.vimrc
