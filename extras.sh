#!/bin/bash

# enable TRIM support
echo '#!/bin/sh
LOG=/var/log/trim.log
echo "*** $(date -R) ***" >> $LOG
fstrim -v / >> $LOG' | sudo tee /etc/cron.daily/trim
sudo chmod +x /etc/cron.daily/trim

# TODO append only once
# fix sound in Skype and volume control for DragonFly
sudo sed -i 's/load-module module-udev-detect.*/& ignore_dB=1 tsched=0/' /etc/pulse/default.pa

# remove unneeded standard software
sudo pacman -Rsn --noconfirm hexchat glade laptop-mode-tools

# make nemo default file manager
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

# Java font fix
yaourt -S --noconfirm jre7-openjdk-headless-fontfix

# install and start tlp
sudo pacman -S --noconfirm tlp tlp-rdw
sudo systemctl enable tlp
sudo systemctl enable tlp-sleep
sudo systemctl enable NetworkManager-dispatcher

# install wine
sudo pacman -S --noconfirm wine

# install i3 WM
sudo pacman -S --noconfirm i3 dmenu

# install Arduino tools
# yaourt -S --noconfirm arduino
# gpasswd -a $USER uucp
# gpasswd -a $USER tty

# install themes, icons
yaourt -S --noconfirm mediterraneannight-theme pacifica-icon-theme

# integrate dropbox
yaourt -S --noconfirm nemo-dropbox-git

# install Libre office
sudo pacman -S libreoffice-base libreoffice-calc libreoffice-common libreoffice-draw libreoffice-gnome libreoffice-impress libreoffice-math libreoffice-writer libreoffice-en-GB libreoffice-uk

# install unclutter (hides mouse cursor)
sudo pacman -S --noconfirm unclutter

# install disk manager
sudo pacman -S --noconfirm gnome-disk-utility

# install Steam
sudo pacman -S --noconfirm ttf-liberation lib32-alsa-plugins lib32-intel-dri steam

# install Zeal documentation browser
yaourt -S --noconfirm zeal-git

# install Intellij Idea
yaourt -S --noconfirm intellij-idea-ultimate-edition

# install LightTable
yaourt -S --noconfirm light-table
