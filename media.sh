#!/bin/bash

# install codecs
sudo apt-get -y install ubuntu-restricted-extras libavformat-extra-53 libavcodec-extra-53 icedtea-7-plugin

# install players
sudo add-apt-repository -y ppa:n-muench/vlc
sudo add-apt-repository -y ppa:me-davidsansome/clementine
sudo add-apt-repository -y ppa:nuvola-player-builders/beta
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install -y vlc clementine nuvolaplayer audacious audacious-plugins

# install themes, icons
sudo add-apt-repository -y ppa:webupd8team/themes
sudo add-apt-repository -y ppa:tiheum/equinox
sudo apt-get update
sudo apt-get install -y mediterraneannight-gtk-theme faenza-icon-theme faience-icon-theme

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

# install ps3 media server
sudo add-apt-repository -y ppa:happy-neko/ps3mediaserver
sudo apt-get update
sudo apt-get install -y ps3mediaserver

# install Cheese
sudo apt-get install -y cheese
