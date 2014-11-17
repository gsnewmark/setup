#!/bin/bash

# install video driver
sudo pacman -S xf86-video-intel lib32-mesa-libgl libva-intel-driver

# install X.Org server
sudo pacman -S xorg-server xorg-server-utils

# install some libs
sudo pacman -S base-devel zlib openssl aspell-uk aspell-en

# install zsh and set it as default shell
sudo pacman -S zsh
chsh -s $(which zsh)

# install python (for dotfiles bootstrap script)
sudo pacman -S python python2

# install useful utils
sudo pacman -S htop curl wget httpie xterm links xclip tmux lm_sensors rsync tree unzip the_silver_searcher net-tools multitail acpi

# configure time synchronization
sudo pacman -S ntp
sudo systemctl enable ntpd.service
sudo timedatectl set-ntp true

# install editors
sudo pacman -S emacs vim

# checkout and activate dotfiles
cd $HOME
git clone git@github.com:gsnewmark/dotfiles.git
cd dotfiles
git submodule init
git submodule update
cd ..
./bootstrap
