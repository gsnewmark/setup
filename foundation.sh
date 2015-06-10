#!/bin/bash

# install video driver
sudo pacman -S xf86-video-intel lib32-mesa-libgl libva-intel-driver

# install X.Org server
sudo pacman -S xorg-server xorg-server-utils

# install some libs
sudo pacman -S base-devel zlib openssl aspell-uk aspell-en

# install yaourt
mkdir -p $HOME/tmp/aur
cd $HOME/tmp/aur
curl -O https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz
tar zxvf package-query.tar.gz
cd package-query
makepkg -si
cd ..
curl -O https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz
tar zxvf yaourt.tar.gz
cd yaourt
makepkg -si
cd $HOME
rm -rf $HOME/tmp/aur

# install zsh and set it as default shell
sudo pacman -S zsh
chsh -s $(which zsh)

# install python (for dotfiles bootstrap script)
sudo pacman -S python python2

# install useful utils
sudo pacman -S htop curl wget httpie xterm links xclip tmux lm_sensors rsync \
               tree unzip the_silver_searcher net-tools acpi reflector

# configure time synchronization
sudo pacman -S ntp
sudo systemctl start ntpd.service
sudo systemctl enable ntpd.service
sudo timedatectl set-ntp true

# generates system entropy
sudo pacman -S haveged
sudo systemctl start haveged
sudo systemctl enable haveged

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
