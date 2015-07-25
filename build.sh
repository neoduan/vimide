#!/bin/bash

#echo "begin install..."
#VIM_DIR="~/.vim"
#echo "1. clone vundle"
#git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
#cp -u  ./.vim/bundle/* ~/.vim/bundle/
#
#echo "2. cp .vimrc"
#mkdir -p ~/.vim/colors
#cp ./.vim/.vimrc* ~/.vim/
#cp ./.vim/colors/* ~/.vim/colors/

cp ./.vimrc  ~/.vimrc
echo 'install Ack'
#sudo curl http://beyondgrep.com/ack-2.14-single-file > ./ack && chmod 0755 ./ack
sudo cp ./ack /usr/local/bin/ack
