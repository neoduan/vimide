#!/bin/bash

echo "begin install..."
VIM_DIR="~/.vim"
echo "1. clone vundle"
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "2. cp .vimrc"
cp ./.vimrc ~/.vimrc
mkdir -p ~/.vim/colors
cp ~/.vim/.vimrc* ~/.vim
cp ~/.vim/colors/* ~/.vim/colors/

echo 'install Ack'
sudo curl http://beyondgrep.com/ack-2.14-single-file > /usr/local/bin/ack && chmod 0755 !#:3
