#!/bin/bash

# install qutebrowser and make it default browser
sudo pacman -S python-opengl qutebrowser

# install Chromium, Firefox, Tor Browser
sudo pacman -S chromium firefox
gpg --keyserver pool.sks-keyservers.net --recv-keys EB774491D9FF06E2
trizen -S tor-browser-en

# download old Firefox for Java applets
mkdir -p $HOME/opt/
cd $HOME/opt/
wget https://ftp.mozilla.org/pub/firefox/releases/42.0/linux-x86_64/en-US/firefox-42.0.tar.bz2
tar jxf firefox-42.0.tar.bz2
rm firefox-42.0.tar.bz2
cd $HOME

# install flash plugin
sudo pacman -S flashplugin

# install email client
sudo pacman -S thunderbird

# install Transmission
sudo pacman -S transmission-gtk transmission-cli

# install Slack client
trizen -S slack-desktop

# install Telegram
sudo pacman -S telegram-desktop

# install Discord
gpg --recv-keys 0FC3042E345AD05D
trizen -S discord

# install Java browser plugin
sudo pacman -S icedtea-web

# install Dropbox
trizen -S dropbox

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
trizen -S zoom
