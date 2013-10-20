#!/bin/bash

# enable TRIM support
echo '#!/bin/sh
LOG=/var/log/trim.log
echo "*** $(date -R) ***" >> $LOG
fstrim -v / >> $LOG' | sudo tee /etc/cron.daily/trim

# remove unneeded standard software
sudo apt-get remove -y shotwell brasero totem rhythmbox empathy

# install tlp
sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install -y tlp tlp-rdw smartmontools ethtool
sudo tlp start

# install java font fix
sudo add-apt-repository -y ppa:no1wantdthisname/openjdk-fontfix
sudo apt-get -y update
sudo apt-get -y upgrade

# install wine
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install -y wine

# install Arduino tools
sudo apt-get -y install arduino arduino-core

# install Solarized profile for Gnome Terminal
cd gnome-terminal-colors-solarized
./solarize dark -p SolarizedDark
./solarize light -p SolarizedLight

# install Unity Tweak Tool
sudo apt-get install -y unity-tweak-tool

# quick preview for nautilus
sudo apt-get install -y gnome-sushi unoconv

# dropbox integtation for nautilus
sudo apt-get install -y nautilus-dropbox

# show dropbox indicator
sudo apt-get install -y libappindicator1

# http://askubuntu.com/questions/22207/quickly-place-a-window-to-another-screen-using-only-the-keyboard
# install compiz config and plugins
sudo apt-get install -y compizconfig-settings-manager compiz-plugins
