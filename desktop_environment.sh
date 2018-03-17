#!/bin/bash

# install i3 & various helpers & fonts & 32-bit GTK libs (for GTK themes support)
trizen -S i3-wm dunst rofi \
          polybar alsa-lib libmpdclient jsoncpp \
          xfce4-settings flameshot gnome-keyring \
          compton feh xdotool \
          udisks2 udiskie i3lock-wrapper bc polkit perl-file-mimeinfo \
          notify-desktop-git lib32-gtk2 gtk-engine-murrine \
          adobe-source-code-pro-fonts ttf-mplus ttf-hack \
          ttf-symbola ttf-font-awesome ttf-ms-fonts ttf-ubuntu-font-family \
          freetype2 fontconfig cairo lib32-fontconfig lib32-freetype2 lib32-cairo

# install San Francisco font
wget https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip -O YosemiteSanFranciscoFont-master.zip
unzip YosemiteSanFranciscoFont-master.zip
cd YosemiteSanFranciscoFont-master
chmod 755 *.ttf
mv *.ttf ~/.fonts/
cd ..
rm -rf YosemiteSanFranciscoFont-master*
fc-cache -fv

# install terminal emulator
sudo pacman -S termite

# install archivers
sudo pacman -S file-roller p7zip

# install GUI text editor
sudo pacman -S gedit

# install ranger file manager and apps for enhanced functionality
sudo pacman -S highlight atool poppler mediainfo ranger w3m imlib2 ffmpegthumbnailer

# install pulseaudio and pulse audio control panel
sudo pacman -S pulseaudio pulseaudio-gconf pulseaudio-jack pavucontrol alsa-utils

# install daemon for volume change handling
trizen -S pa-applet-git

# install document viewer
sudo pacman -S eog zathura zathura-djvu zathura-ps zathura-pdf-mupdf
xdg-mime default zathura.desktop application/pdf

# install and enable network manager
sudo pacman -S networkmanager network-manager-applet
sudo systemctl enable NetworkManager.service

# install themes, icons
trizen -S faenza-icon-theme
sudo wget https://github.com/gsnewmark/numix-solarized-dark-gtk-theme/releases/download/19082017/NumixSolarizedDark.zip -O /usr/share/themes/NumixSolarizedDark.zip
sudo unzip /usr/share/themes/NumixSolarizedDark.zip -d /usr/share/themes/
sudo rm /usr/share/themes/NumixSolarizedDark.zip

# install and enable lightdm
sudo pacman -S lightdm lightdm-gtk-greeter
sudo cp $HOME/setup/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
sudo systemctl enable lightdm.service

# install unclutter (hides mouse cursor)
sudo pacman -S unclutter
