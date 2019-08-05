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

# install disk utility
sudo pacman -S gnome-disk-utility

# install Libre office
sudo pacman -S libreoffice-fresh libreoffice-fresh-en-GB libreoffice-fresh-uk
xdg-mime default libreoffice-writer.desktop application/vnd.openxmlformats-officedocument.wordprocessingml.document

# install TexLive
sudo pacman -S texlive-most texlive-lang

# install Steam
gpg --keyserver pgp.mit.edu --recv-keys FCF986EA15E6E293A5644F10B4322F04D67658D8
yay -S ttf-liberation steam-native-runtime pulseaudio-alsa ffmpeg-compat-54
sudo pacman -S steam

# install ntfs support
sudo pacman -S ntfs-3g

# install exFAT support
sudo pacman -S exfat-utils

# install tools for planck firmware flashing
sudo pacman -S avr-gcc avr-binutils avr-libc dfu-utils \
     arm-none-eabi-gcc arm-none-eabi-binutils arm-none-eabi-newlib
yay -S dfu-programmer

# install markdown (for Emacs Markdown export)
sudo pacman -S markdown

# install tcpdump & Wireshark
sudo pacman -S tcpdump wireshark-gtk

# install Android (MTP) file uploader
sudo pacman -S android-file-transfer

# install CLI lines of code counter
sudo pacman -S cloc

# install SSHFS
sudo pacman -S sshfs

# install screen recorder
sudo pacman -S peek

# install proselint
sudo pacman -S proselint
