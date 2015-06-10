#!/bin/bash

# install bspwm & various helpers 
yaourt -S bspwm-git lemonbar-git sxhkd-git dunst dmenu2 \
          xfce4-settings xfce4-screenshooter gnome-keyring \
          compton feh ttf-font-awesome xorg-utils xdotool \
          udisks2 udiskie i3lock-wrapper bc

# install terminal emulator
yaourt -S termite

# install archivers
sudo pacman -S file-roller p7zip

# install GUI text editor
sudo pacman -S gedit

# install ranger file manager and apps for enhanced functionality
sudo pacman -S highlight atool poppler mediainfo ranger w3m imlib2

# install pulseaudio and pulse audio control panel
sudo pacman -S pulseaudio pulseaudio-gconf pulseaudio-jack pavucontrol alsa-utils

# install daemon for volume change handling
yaourt -S pa-applet-git

# install document viewer
sudo pacman -S eog zathura zathura-djvu zathura-ps zathura-pdf-mupdf

# install and enable network manager
sudo pacman -S networkmanager network-manager-applet
sudo systemctl enable NetworkManager.service

# install themes, icons
yaourt -S gtk-theme-numix-solarized faenza-icon-theme

# install and enable lightdm
sudo pacman -S lightdm lightdm-gtk-greeter
sudo cp $HOME/setup/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
sudo systemctl enable lightdm.service

# install unclutter (hides mouse cursor)
sudo pacman -S unclutter
