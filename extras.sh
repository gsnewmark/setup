#!/bin/bash

# install and enable cron
sudo pacman -S cronie
sudo systemctl enable cronie

# TODO append only once
# fix sound in Skype and volume control for DragonFly
sudo sed -i 's/load-module module-udev-detect.*/& ignore_dB=1 tsched=0/' /etc/pulse/default.pa
sudo sed -i 's/load-module module-role-cork/#load-module module-role-cork/' /etc/pulse/default.pa

# install and start tlp
sudo pacman -S tlp tlp-rdw
sudo systemctl enable tlp
sudo systemctl enable tlp-sleep
sudo systemctl enable NetworkManager-dispatcher

# install infinality-bundle
sudo pacman-key -r 962DDE58
sudo pacman-key --lsign-key 962DDE58
echo "[infinality-bundle]" | sudo tee -a /etc/pacman.conf
echo "Server = http://bohoomil.com/repo/\$arch" | sudo tee -a /etc/pacman.conf
echo "[infinality-bundle-multilib]" | sudo tee -a /etc/pacman.conf
echo "Server = http://bohoomil.com/repo/multilib/\$arch" | sudo tee -a /etc/pacman.conf
echo "[infinality-bundle-fonts]" | sudo tee -a /etc/pacman.conf
echo "Server = http://bohoomil.com/repo/fonts" | sudo tee -a /etc/pacman.conf
sudo pacman -Syy
sudo pacman -S infinality-bundle infinality-bundle-multilib ibfonts-meta-extended

# install font with emoji
sudo pacman -S ttf-symbola-ib

# install disk utility
sudo pacman -S gnome-disk-utility

# install Libre office
sudo pacman -S libreoffice-fresh libreoffice-fresh-en-GB libreoffice-fresh-uk

# install TexLive
sudo pacman -S texlive-most texlive-lang

# install Steam
yaourt -S ttf-liberation-ib lib32-alsa-plugins lib32-flashplugin \
       lib32-libpulse lib32-libpng12 lib32-libtheora pulseaudio-alsa
sudo pacman -S steam

# install ntfs support
sudo pacman -S ntfs-3g

# install tools for planck firmware flashing
sudo pacman -S avr-gcc avr-binutils avr-libc dfu-utils \
     arm-none-eabi-gcc arm-none-eabi-binutils arm-none-eabi-newlib
yaourt -S dfu-programmer
