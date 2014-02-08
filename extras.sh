#!/bin/bash

# enable TRIM support
echo '#!/bin/sh
LOG=/var/log/trim.log
echo "*** $(date -R) ***" >> $LOG
fstrim -v / >> $LOG' | sudo tee /etc/cron.daily/trim

# TODO append only once
# fix sound in Skype and volume control for DragonFly
sudo sed -i 's/load-module module-udev-detect.*/& ignore_dB=1 tsched=0/' /etc/pulse/default.pa

# remove unneeded standard software
sudo apt-get remove -y shotwell brasero totem empathy

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

# install dconf-tools
sudo apt-get install dconf-tools

# add elementary community ppa
sudo add-apt-repository -y ppa:versable/elementary-update && sudo apt-get update

# install elementart tweaks
sudo apt-get install -y elementary-tweaks

# install themes, icons
sudo add-apt-repository -y ppa:fsvh/pacifica-icon-theme
sudo apt-get install -y elementary-dark-theme
sudo apt-get install -y elementary-elfaenza-icons elementary-thirdparty-icons
sudo apt-get install -y pacifica-icon-theme
sudo apt-get install -y elementary-plank-themes
sudo apt-get install -y elementary-wallpaper-collection

# install super-wingpanel
sudo apt-add-repository -y ppa:heathbar/super-wingpanel
sudo apt-get update
sudo apt-get install -y super-wingpanel

# install indicator synapse
sudo apt-get install -y indicator-synapse

# integrate dropbox
sudo apt-get install pantheon-files-plugin-dropbox

# install Variety wallpaper changer
sudo add-apt-repository -y ppa:peterlevi/ppa
sudo apt-get update
sudo apt-get install -y variety

# do not show bluetooth indicator
gsettings set com.canonical.indicator.bluetooth visible false

# install qtconfig to change Skype's font
sudo apt-get install -y qt4-qtconfig

# install Libre office
sudo apt-get install -y libreoffice

# install unclutter (hides mouse cursor)
sudo apt-get install -y unclutter

# install disk manager
sudo apt-get install -y gnome-disk-utility

# install Steam
wget -O /tmp/steam.deb http://media.steampowered.com/client/installer/steam.deb
sudo dpkg -i /tmp/steam.deb
sudo apt-get update
sudo apt-get install steam jockey-common nvidia-common python-xkit

# install f.lux
sudo add-apt-repository -y ppa:kilian/f.lux
sudo apt-get update
sudo apt-get -y install fluxgui

# install TrueCrypt
sudo add-apt-repository ppa:stefansundin/truecrypt
sudo apt-get update
sudo apt-get install truecrypt

# install terra drop-down termina
sudo add-apt-repository -y ppa:ozcanesen/terra-terminal
sudo apt-get update
sudo apt-get install -y terra

# updated X.org
sudo add-apt-repository -y ppa:ubuntu-x-swat/x-updates
