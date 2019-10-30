#!/bin/bash

# install video drivers
sudo pacman -S xf86-video-intel lib32-mesa-libgl mesa-libgl libva-intel-driver \
               nvidia bumblebee \
               lib32-vulkan-icd-loader vulkan-icd-loader lib32-vulkan-intel vulkan-intel vulkan-mesa-layer
               primus_vk lib32-primus_vk

# install X.Org server
sudo pacman -S xorg-server xorg-xbacklight xorg-xinput xorg-xmodmap xorg-xrandr xorg-xset

# install some libs
sudo pacman -S base-devel zlib openssl aspell-uk aspell-en

# install yay
mkdir -p $HOME/tmp/aur
cd $HOME/tmp/aur
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd $HOME
rm -rf $HOME/tmp/aur

# install fish and set it as default shell
sudo pacman -S fish fzf
chsh -s $(which fish)
yay -S fisher

# install stow (for dotfiles bootstrap)
sudo pacman -S stow

# install useful utils
sudo pacman -S htop curl wget httpie xterm links xclip tmux lm_sensors rsync \
               tree unzip the_silver_searcher ripgrep net-tools acpi reflector \
               terminus-font bind-tools lsof iftop pacman-contrib time iotop \
               systemd-resolvconf \
               fd bat exa

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

sudo systemctl enable reflector.timer

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
git clone --recursive git@gitlab.com:gsnewmark/dotfiles.git
cd dotfiles
stow foundation
stow desktop_environment
stow development
stow web
stow media
stow extras
fisher
cd ../setup

# Enable lock on suspend
echo '[Unit]
Description=Lock X session for user %i
Before=sleep.target

[Service]
User=%i
Environment=DISPLAY=:0
ExecStartPre=/usr/bin/xset dpms force suspend
ExecStart=/home/gsnewmark/bin/pm lock

[Install]
WantedBy=sleep.target' | sudo tee /etc/systemd/system/lock@.service

sudo systemctl enable lock@gsnewmark.service

# install firmware update daemon
sudo pacman -S fwupd

# install util for Logitech controllers
sudo pacman -S solaar
