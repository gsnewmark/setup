#!/bin/bash

# install and enable cron
sudo pacman -S cronie
sudo systemctl enable cronie

# enable TRIM support
sudo mkdir /etc/cron.daily
echo '#!/bin/sh
LOG=/var/log/trim.log
echo "*** $(date -R) ***" >> $LOG
fstrim -v / >> $LOG' | sudo tee /etc/cron.daily/trim
sudo chmod +x /etc/cron.daily/trim

# TODO append only once
# fix sound in Skype and volume control for DragonFly
sudo sed -i 's/load-module module-udev-detect.*/& ignore_dB=1 tsched=0/' /etc/pulse/default.pa

# Java font fix
yaourt -S --noconfirm jre7-openjdk-headless-fontfix

# install and start tlp
sudo pacman -S --noconfirm tlp tlp-rdw
sudo systemctl enable tlp
sudo systemctl enable tlp-sleep
sudo systemctl enable NetworkManager-dispatcher

# install wine
sudo pacman -S --noconfirm wine

# install Ubuntu font rendering patches
yaourt -S freetype2-ubuntu fontconfig-ubuntu cairo-ubuntu

# integrate dropbox
yaourt -S --noconfirm nautilus-dropbox

# install Libre office
sudo pacman -S --noconfirm libreoffice-base libreoffice-calc libreoffice-common libreoffice-draw libreoffice-gnome libreoffice-impress libreoffice-math libreoffice-writer libreoffice-en-GB libreoffice-uk

# install TexLive
sudo pacman -S --noconfirm texlive-most texlive-lang

# install Steam
sudo pacman -S --noconfirm ttf-liberation lib32-alsa-plugins llib32-flashplugin steam

# install Intellij Idea
yaourt -S --noconfirm intellij-idea-ultimate-edition

# install few funny utils
yaourt -S --noconfirm archey lolcat
