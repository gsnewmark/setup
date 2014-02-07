#!/bin/bash

# update kernel and xorg
sudo apt-get update
sudo apt-get install -y linux-generic-lts-raring xserver-xorg-lts-raring

# install some libs
sudo apt-get install -y build-essential zlib1g zlib1g-dev openssl libssl-dev aspell-uk aspell-en

# install zsh and set it as default shell
sudo apt-get install -y zsh
chsh -s /bin/zsh

# install useful utils
sudo apt-add-repository -y ppa:git-core/ppa && sudo apt-get update
sudo apt-get install -y htop curl wget git xterm links xclip tmux byobu

# install emacs24
sudo apt-add-repository -y ppa:cassou/emacs && sudo apt-get update
sudo apt-get install -y emacs24

# install vim
sudo apt-get install -y vim

# install python (for dotfiles bootstrap script)
sudo apt-get install python

# checkout and activate dotfiles
cd $HOME
git clone git@github.com:gsnewmark/dotfiles.git
cd dotfiles
git submodule init
git submodule update
./bootstrap
