#!/bin/bash

# install Gnome + i3 WM
yaourt -S --noconfirm gnome gnome-tweak-tool i3-gnome python-i3-git i3blocks dmenu-xft-fuzzy xboomx quickswitch-i3 compton feh ttf-font-awesome skb

# install and enable network manager
sudo pacman -S --noconfirm networkmanager
sudo systemctl enable NetworkManager.service

# install themes, icons
yaourt -S --noconfirm mediterraneannight-theme gtk-theme-numix-solarized faenza-icon-theme

# install and enable lightdm
sudo pacman -S --noconfirm lightdm lightdm-gtk3-greeter
sudo cp $HOME/setup/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter
sudo systemctl enable lightdm.service

# install unclutter (hides mouse cursor)
sudo pacman -S --noconfirm unclutter
