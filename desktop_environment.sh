#!/bin/bash

# install DE + i3 WM
yaourt -S xfce4 notify-osd xfce4-screenshooter gnome-keyring i3-wm python-i3-git i3blocks dmenu-xft-fuzzy xboomx quickswitch-i3 compton feh ttf-font-awesome skb gvfs xorg-utils

# install terminal emulator
sudo pacman -S gnome-terminal

# install archivers
sudo pacman -S file-roller p7zip thunar-archive-plugin

# install GUI text editor
sudo pacman -S gedit

# install ranger file manager and apps for enhanced functionality
sudo pacman -S highlight atool poppler mediainfo ranger w3m imlib2

# install pulseaudio and pulse audio control panel
sudo pacman -S pulseaudio pavucontrol alsa-utils

# install daemon for volume change handling
yaourt -S pa-applet-git

# install document viewer
sudo pacman -S evince eog

# install and enable network manager
sudo pacman -S networkmanager network-manager-applet
sudo systemctl enable NetworkManager.service

# install themes, icons
yaourt -S mediterraneannight-theme gtk-theme-numix-solarized faenza-icon-theme

# install and enable lightdm
sudo pacman -S lightdm lightdm-gtk3-greeter
sudo cp $HOME/setup/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
sudo systemctl enable lightdm.service

# install unclutter (hides mouse cursor)
sudo pacman -S unclutter

# integrate dropbox
yaourt -S thunar-dropbox
