#!/bin/bash

# install codecs
sudo apt-get -y install ubuntu-restricted-extras libavformat-extra-53 libavcodec-extra-53

# install players
sudo add-apt-repository -y ppa:n-muench/vlc
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo add-apt-repository -y ppa:me-davidsansome/clementine
sudo apt-get update
sudo apt-get install -y vlc clementine audacious audacious-plugins

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

# install document/image viewers
sudo apt-get install -y evince eog eog-plugins

# install GIMP
sudo apt-get install -y gimp
