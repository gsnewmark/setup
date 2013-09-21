#!/bin/bash

# enable TRIM support
echo '#!/bin/sh
LOG=/var/log/trim.log
echo "*** $(date -R) ***" >> $LOG
fstrim -v / >> $LOG' | sudo tee /etc/cron.daily/trim

# remove unneeded standard software
sudo apt-get remove -y unity-lens-shopping unity-scope-musicstores shotwell brasero totem rhytmbox empathy

# install tlp
sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt-get update -y
sudo apt-get install -y tlp tlp-rdw smartmontools ethtool
sudo tlp start

# install nemo (+ dropbox) and make it default file manager
sudo add-apt-repository -y ppa:gwendal-lebihan-dev/cinnamon-stable
sudo apt-get update
sudo apt-get install -y nemo nemo-compare nemo-dropbox nemo-fileroller nemo-pastebin nemo-seahorse nemo-share
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true

# install java font fix
sudo add-apt-repository -y ppa:no1wantdthisname/openjdk-fontfix
sudo apt-get -y update
sudo apt-get -y upgrade

# install texlive
sudo apt-get install -y texlive-full

# install wine
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install -y wine1.6 winetricks

# install Arduino tools
sudo apt-get -y install arduino arduino-core

# install Solarized profile for Gnome Terminal
cd gnome-terminal-colors-solarized
./solarize dark -p SolarizedDark
./solarize light -p SolarizedLight

# install Unity Tweak Tool
sudo apt-get install -y unity-tweak-tool

# http://askubuntu.com/questions/22207/quickly-place-a-window-to-another-screen-using-only-the-keyboard
# install compiz config and plugins
sudo apt-get install -y compizconfig-settings-manager compiz-plugins
