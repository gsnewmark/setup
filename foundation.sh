#!/bin/bash

# install some libs
sudo apt-get install -y build-essential zlib1g-dev libldap2-dev libsasl2-dev libssl-dev

# install zsh and set it as default shell
sudo apt-get install -y zsh
chsh -s /bin/zsh

# install useful utils
sudo apt-get install -y htop curl git

# install emacs24
sudo apt-add-repository -y ppa:cassou/emacs && sudo apt-get update
sudo apt-get install -y emacs24

# install vim
sudo apt-get install -y vim-gnome vim

# checkout and activate dotfiles
cd $HOME
git clone --recursive git@github.com:gsnewmark/dotfiles.git
cd dotfiles
./bootstrap
