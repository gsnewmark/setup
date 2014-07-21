#!/bin/bash

# install Conkeror and make it default browser
yaourt -S conkeror-git
mkdir -p ~/.local/share/applications
cp conkeror.desktop ~/.local/share/applications/
update-desktop-database ~/.local/share/applications

# install Chromium, Firefox, Tor Browser
sudo pacman -S chromium firefox
yaourt -S tor-browser-en

# install flash plugin and Pulse support
sudo pacman -S flashplugin
yaourt -S libflashsupport-pulse

# install Geary
sudo pacman -S geary

# install Corebird Twitter client
yaourt -S corebird-git

# install Transmission
sudo pacman -S transmission-gtk transmission-cli

# install Skype + 32-bit GTK libs (for GTK themes support)
sudo pacman -S skype lib32-gtk2

# install Java browser plugin
sudo pacman -S icedtea-web-java7

# install Dropbox
yaourt -S dropbox

# install SopCast player
yaourt -S sopcast-player

# install Mosh
sudo pacman -S mosh

# install Cisco VPN and OpenVPN support
sudo pacman -S networkmanager-vpnc networkmanager-openvpn

# install Remmina remote desktop client
sudo pacman -S remmina
