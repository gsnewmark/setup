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

# install and start tlp
sudo pacman -S tlp tlp-rdw
sudo systemctl enable tlp
sudo systemctl enable tlp-sleep
sudo systemctl enable NetworkManager-dispatcher

# install wine
sudo pacman -S wine

# install Ubuntu font rendering patches
yaourt -S freetype2-ubuntu fontconfig-ubuntu cairo-ubuntu

# install disk utility
sudo pacman -S gnome-disk-utility

# install Libre office
sudo pacman -S libreoffice-fresh libreoffice-en-GB libreoffice-uk

# install TexLive
sudo pacman -S texlive-most texlive-lang

# install Steam
sudo pacman -S ttf-liberation lib32-alsa-plugins lib32-flashplugin lib32-libpulse lib32-libpng12 lib32-libtheora pulseaudio-alsa
sudo pacman -S steam

# install Intellij Idea
yaourt -S intellij-idea-ultimate-edition

# install ntfs support
sudo pacman -S ntfs-3g

# install few funny utils
yaourt -S archey lolcat

# install cool-retro-term
yaourt -S aur/cool-retro-term-git
