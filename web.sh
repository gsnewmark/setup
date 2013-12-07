#!/bin/bash

# add Canonical partner repository
sudo add-apt-repository -y "deb http://archive.canonical.com/ precise partner"

# install Conkeror
sudo apt-key adv --keyserver pgp.uni-mainz.de --recv-keys 0F84088E
echo 'deb     http://noone.org/conkeror-nightly-debs sid main
deb-src http://noone.org/conkeror-nightly-debs sid main' | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y --force-yes conkeror
mkdir -p ~/.local/share/applications
cp conkeror.desktop ~/.local/share/applications/
update-desktop-database ~/.local/share/applications

# install Chromium
sudo apt-get install -y chromium-browser

# install Firefox, Thunderbird
sudo apt-get install -y firefox thunderbird

# install Transmission
sudo add-apt-repository -y ppa:transmissionbt/ppa && sudo apt-get update
sudo apt-get install -y transmission

# install Skype
sudo apt-get update && sudo apt-get install -y skype

# TODO append only once
# fix sound in Skype
sudo sed -i 's/load-module module-udev-detect.*/& tsched=0/' /etc/pulse/default.pa

# install Java browser plugin
sudo apt-get -y install icedtea-7-plugin

# install Dropbox
wget -O /tmp/dropbox.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_1.6.0_amd64.deb
sudo dpkg -i /tmp/dropbox.deb

# install SopCast player
sudo add-apt-repository -y ppa:ferramroberto/sopcast
sudo apt-get update
sudo apt-get install -y sopcast-player
