#!/bin/bash

sudo apt update

sudo apt install vim

sudo apt install -y vim-gtk3

sudo apt install exuberant-ctags

# install vim-plug
sudo apt install curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# move .vimrc to the home directory
cp .vimrc ~/

# run PlugInstall in command line
vim +'PlugInstall --sync' +qa
