#!/bin/bash

# install Chromium, Tor Browser
sudo pacman -S chromium firefox
gpg --keyserver pool.sks-keyservers.net --recv-keys EB774491D9FF06E2
yay -S tor-browser-en

# install Firefox with Tridactyl
sudo pacman -S firefox firefox-tridactyl
curl -fsSl https://raw.githubusercontent.com/tridactyl/tridactyl/master/native/install.sh | bash

# install flash plugin
sudo pacman -S flashplugin

# install email client
sudo pacman -S thunderbird

# install Transmission
sudo pacman -S transmission-gtk transmission-cli

# install Slack client
yay -S slack-desktop

# install Telegram
sudo pacman -S telegram-desktop

# install Discord
gpg --recv-keys 0FC3042E345AD05D
yay -S discord

# install Skype
yay -S skypeforlinux-stable-bin

# install Java browser plugin
sudo pacman -S icedtea-web

# install Dropbox
yay -S dropbox

# install Mosh
sudo pacman -S mosh

# install Cisco VPN and OpenVPN support
sudo pacman -S networkmanager-vpnc networkmanager-openvpn

# install Remmina remote desktop client
sudo pacman -S remmina

# install Keybase CLI util
sudo pacman -S keybase

# install S3 CLI util
sudo pacman -S s3cmd

# install mitmproxy
sudo pacman -S mitmproxy

# install Zoom client
yay -S zoom

# install nmap
sudo pacman -S nmap
