#!/bin/bash

# install i3 & various helpers
yaourt -S i3-wm python-i3-git i3blocks quickswitch-i3 dunst dmenu2 \
          xfce4-settings xfce4-screenshooter gnome-keyring \
          compton feh ttf-font-awesome ttf-ms-fonts xorg-utils xdotool \
          udisks2 udiskie i3lock-wrapper bc polkit xkb-switch-git \
          perl-file-mimeinfo adobe-source-code-pro-fonts ttf-mplus

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
xdg-mime default zathura.desktop application/pdf

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
