#!/bin/bash

git submodule init
git submodule update

#install zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
echo "source ~/.dotfiles/zsh/zshrc" >> ~/.zshrc

#install vim
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
cd ~/.dotfiles/vim

# update command-t
cd bundle/wincent-Command-T
rake make
