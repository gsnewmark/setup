#!/bin/bash

# enable TRIM support
echo '#!/bin/sh
LOG=/var/log/trim.log
echo "*** $(date -R) ***" >> $LOG
fstrim -v / >> $LOG' | sudo tee /etc/cron.daily/trim

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

# add elementary community ppa
sudo add-apt-repository -y ppa:versable/elementary-update && sudo apt-get update

# install elementart tweaks
sudo apt-get install -y elementary-tweaks

# http://askubuntu.com/questions/22207/quickly-place-a-window-to-another-screen-using-only-the-keyboard
# install compiz config and plugins
#sudo apt-get install -y compizconfig-settings-manager compiz-plugins

# install themes, icons
sudo apt-get install -y elementary-dark-theme elementary-colors-theme
sudo apt-get install -y elementary-elfaenza-icons elementary-thirdparty-icons
sudo apt-get install -y elementary-plank-themes
sudo apt-get install -y elementary-wallpaper-collection

# install twitter app
sudo apt-get install -y birdie-granite

# install wingpanel slim
sudo apt-get install -y wingpanel-slim

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

# install Steam
wget -O /tmp/steam.deb http://media.steampowered.com/client/installer/steam.deb
sudo dpkg -i /tmp/steam.deb
sudo apt-get update
sudo apt-get install steam jockey-common nvidia-common python-xkit

# updated X.org
sudo add-apt-repository -y ppa:ubuntu-x-swat/x-updates
