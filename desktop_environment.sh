#!/bin/bash

# install i3 & various helpers & fonts & 32-bit GTK libs (for GTK themes support)
gpg --recv-keys C1A60EACE707FDA5
yay -S i3-wm dunst rofi \
       i3blocks xkb-switch alsa-lib libmpdclient jsoncpp \
       xfce4-settings flameshot gnome-keyring \
       compton feh xdotool \
       udisks2 udiskie betterlockscreen bc polkit perl-file-mimeinfo \
       notify-desktop-git lib32-gtk2 gtk-engine-murrine \
       qt5-styleplugins \
       ttf-iosevka-term-ss05 \
       adobe-source-sans-pro-fonts adobe-source-serif-pro-fonts adobe-source-han-sans-classic-fonts \
       ttf-symbola otf-font-awesome ttf-ms-fonts ttf-ubuntu-font-family \
       freetype2 fontconfig cairo lib32-fontconfig lib32-freetype2 lib32-cairo

# install sway & related utils
sudo pacman -S sway swayidle swaylock waybar wallutils grim qt5-wayland xorg-server-xwayland xorg-xeyes

# install terminal emulator
sudo pacman -S termite

# install archivers
sudo pacman -S file-roller p7zip zip

# install GUI text editor
sudo pacman -S gedit

# install ranger file manager and apps for enhanced functionality
sudo pacman -S highlight atool poppler mediainfo ranger w3m imlib2 ffmpegthumbnailer

# install pulseaudio and pulse audio control panel
sudo pacman -S pulseaudio pulseaudio-gconf pulseaudio-jack pavucontrol alsa-utils

# install daemon for volume change handling
yay -S pa-applet-git

# install document viewer
sudo pacman -S eog zathura zathura-djvu zathura-ps zathura-pdf-mupdf
xdg-mime default zathura.desktop application/pdf

# install and enable network manager
sudo pacman -S networkmanager network-manager-applet
sudo systemctl enable NetworkManager.service

# install themes, icons
sudo pacman -S papirus-icon-theme
yay -S hardcode-tray-git
sudo -E hardcode-tray --conversion-tool RSVGConvert --size 22 --theme Papirus-Dark

sudo pacman -S arc-solid-gtk-theme

gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark-solid"
gsettings set org.gnome.desktop.wm.preferences theme "Arc-Dark-solid"

# install and enable sddm
sudo pacman -S sddm
yay -S sddm-lain-wired-theme
sudo cp $HOME/setup/sddm.conf /etc/sddm.conf
sudo systemctl enable sddm.service

# install unclutter (hides mouse cursor)
sudo pacman -S unclutter

# install tray battery indicator
sudo pacman -S cbatticon
