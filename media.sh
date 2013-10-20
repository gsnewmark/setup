#!/bin/bash

# install codecs
sudo apt-get -y install ubuntu-restricted-extras libavformat-extra-53 libavcodec-extra-53

# install players
sudo add-apt-repository -y ppa:n-muench/vlc
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install -y vlc clementine audacious audacious-plugins

# install themes, icons
sudo add-apt-repository -y ppa:webupd8team/themes
sudo add-apt-repository -y ppa:snwh/moka-icon-theme-daily
sudo add-apt-repository -y ppa:noobslab/themes
sudo apt-get update
sudo apt-get install -y mediterraneannight-gtk-theme shimmer-themes flatstudio moka-icon-theme moka-icon-theme-dark moka-icon-theme-blue 

# install Variety wallpaper changer
sudo add-apt-repository -y ppa:peterlevi/ppa
sudo apt-get update
sudo apt-get install -y variety

# install Calibre
sudo add-apt-repository -y ppa:n-muench/calibre
sudo apt-get update
sudo apt-get install -y calibre

# install Rockbox Utility
# TODO use /tmp
wget http://download.rockbox.org/rbutil/linux/RockboxUtility-v1.3.1-64bit.tar.bz2
tar -jxf RockboxUtility-v1.3.1-64bit.tar.bz2
mv RockboxUtility-v1.3.1-64bit/RockboxUtility ~/bin
rm -rf RockboxUtility-v1.3.1-64bit.tar.bz2 RockboxUtility-v1.3.1-64bit

# install Cheese
sudo apt-get install -y cheese
