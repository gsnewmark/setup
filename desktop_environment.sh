#!/bin/bash

# install DE + i3 WM
yaourt -S --noconfirm xfce4 xfce4-notifyd xfce4-screenshooter gnome-keyring i3-wm python-i3-git i3blocks dmenu-xft-fuzzy xboomx quickswitch-i3 compton feh ttf-font-awesome skb gfvs xorg-utils

# install terminal emulator
sudo pacman -S --noconfirm gnome-terminal

# install archivers
sudo pacman -S --noconfirm file-roller p7zip thunar-archive-plugin

# install GUI text editor
sudo pacman -S --noconfirm gedit

# install pulseaudio and pulse audio control panel
sudo pacman -S --noconfirm pulseaudio pavucontrol alsa-utils

# install daemon for volume change notifications
yaourt -S --noconfirm xfce4-volumed

# install document viewer
sudo pacman -S --noconfirm evince eog

# install and enable network manager
sudo pacman -S --noconfirm networkmanager network-manager-applet
sudo systemctl enable NetworkManager.service

# install themes, icons
yaourt -S --noconfirm mediterraneannight-theme gtk-theme-numix-solarized faenza-icon-theme

# install and enable lightdm
sudo pacman -S --noconfirm lightdm lightdm-gtk3-greeter
sudo cp $HOME/setup/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
sudo systemctl enable lightdm.service

# install unclutter (hides mouse cursor)
sudo pacman -S --noconfirm unclutter
