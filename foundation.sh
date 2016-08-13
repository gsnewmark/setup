#!/bin/bash

# install video driver
sudo pacman -S xf86-video-intel lib32-mesa-libgl mesa-libgl libva-intel-driver

# install X.Org server
sudo pacman -S xorg-server xorg-server-utils

# install some libs
sudo pacman -S base-devel zlib openssl aspell-uk aspell-en

# install yaourt
mkdir -p $HOME/tmp/aur
cd $HOME/tmp/aur
curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz
tar zxvf package-query.tar.gz
cd package-query
makepkg -si
cd ..
curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
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
               tree unzip the_silver_searcher net-tools acpi reflector \
               terminus-font bind-tools lsof

# install ncurses 5 compatibility
gpg --recv-keys 702353E0F7E48EDB
yaourt -S ncurses5-compat-libs

# Enable reflector periodic job
echo '[Unit]
Description=Pacman mirrorlist update

[Service]
Type=oneshot
ExecStart=/usr/bin/reflector --protocol http --latest 30 --number 20 --sort rate --save /etc/pacman.d/mirrorlist' | sudo tee /etc/systemd/system/reflector.service

echo '[Unit]
Description=Run reflector weekly

[Timer]
OnCalendar=weekly
AccuracySec=12h
Persistent=true

[Install]
WantedBy=timers.target' | sudo tee /etc/systemd/system/reflector.timer

systemctl enable reflector.timer

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
./bootstrap
cd ../setup
