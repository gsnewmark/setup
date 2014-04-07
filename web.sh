#!/bin/bash

# install Conkeror and make it default browser
yaourt -S --noconfirm conkeror-git
mkdir -p ~/.local/share/applications
cp conkeror.desktop ~/.local/share/applications/
update-desktop-database ~/.local/share/applications

# install Chromium, Firefox, Tor Browser
sudo pacman -S --noconfirm chromium firefox
yaourt -S --noconfirm tor-browser-en

# install Geary
sudo pacman -S --noconfirm geary

# install Corebird Twitter client
yaourt -S --noconfirm corebird-git

# install Transmission
sudo pacman -S --noconfirm transmission-gtk transmission-cli

# install Skype
sudo pacman -S --noconfirm skype

# install Java browser plugin
sudo pacman -S --noconfirm icedtea-web-java7

# install Dropbox
yaourt -S --noconfirm dropbox-experimental

# install SopCast player
yaourt -S --noconfirm sopcast-player

# install Mosh
sudo pacman -S --noconfirm mosh

# install Cisco VPN support
sudo pacman -S --noconfirm networkmanager-vpnc

# install Remmina remote desktop client
sudo pacman -S --noconfirm remmina

# install Liferea RSS reader
sudo pacman -S --noconfirm liferea
