#!/bin/bash

#+ Download vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# get current path 
p=$(pwd)

# use namet.vim
echo "source ${p}/namet.vim" > ~/.vimrc

# install plugins
vim +PlugInstall

