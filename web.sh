#!/bin/bash

# install qutebrowser and make it default browser
sudo pacman -S python-opengl qutebrowser
mkdir -p ~/.local/share/applications
cp qutebrowser.desktop ~/.local/share/applications/
sudo cp qutebrowser.desktop /usr/share/applications/
update-desktop-database ~/.local/share/applications
xdg-mime default qutebrowser.desktop x-scheme-handler/http
xdg-mime default qutebrowser.desktop x-scheme-handler/https

# install Chromium, Firefox, Tor Browser
sudo pacman -S chromium firefox
gpg --keyserver pool.sks-keyservers.net --recv-keys D1483FA6C3C07136
yaourt -S tor-browser-en

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
thunderbird &
last_pid=$!
kill -KILL $last_pid
cd $HOME/.thunderbird/*.default
wget https://github.com/spymastermatt/thunderbird-monterail/archive/master.zip
unzip master.zip
rm master.zip
mv thunderbird-monterail-master chrome
echo '@import "icons/lightIcons.css";' >> chrome/userChrome.css
cd $HOME

# install Corebird Twitter client
yaourt -S corebird

# install Transmission
sudo pacman -S transmission-gtk transmission-cli

# install Skype
yaourt -S skypeforlinux-bin

# install Slack client
yaourt -S slack-desktop

# install Java browser plugin
sudo pacman -S icedtea-web

# install Dropbox
yaourt -S dropbox

# install Mosh
sudo pacman -S mosh

# install Cisco VPN and OpenVPN support
sudo pacman -S networkmanager-vpnc networkmanager-openvpn

# install Remmina remote desktop client
sudo pacman -S remmina

# install Keybase CLI util
yaourt -S keybase

# install S3 CLI util
sudo pacman -S s3cmd

# install mitmproxy
sudo pacman -S mitmproxy

# install Zoom client
yaourt -S zoom
