#!/bin/bash

# install some libs
sudo pacman -S --noconfirm base-devel zlib openssl aspell-uk aspell-en

# install zsh and set it as default shell
sudo pacman -S --noconfirm zsh
chsh -s $(which zsh)

# install useful utils
sudo pacman -S --noconfirm htop curl wget xterm links xclip tmux lm_sensors rsync yaourt openssh nfs-utils

# install python (for dotfiles bootstrap script)
sudo pacman -S --noconfirm python python2

# install byobu
yaourt -S --noconfirm byobu

# install editors
sudo pacman -S --noconfirm emacs vim

# checkout and activate dotfiles
cd $HOME
git clone git@github.com:gsnewmark/dotfiles.git
cd dotfiles
git submodule init
git submodule update
./bootstrap
