#!/bin/bash

# add Canonical partner repository
sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

# install conkeror
sudo apt-key adv --keyserver pgp.uni-mainz.de --recv-keys 0F84088E
echo 'deb     http://noone.org/conkeror-nightly-debs sid main
deb-src http://noone.org/conkeror-nightly-debs sid main' | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y --force-yes conkeror
mkdir -p ~/.local/share/applications
cp conkeror.desktop ~/.local/share/applications/
update-desktop-database ~/.local/share/applications

# install chromium
sudo apt-get install -y chromium-browser

# install Skype
sudo apt-get -y update && sudo apt-get install -y skype

# install Skype-wrapper
sudo add-apt-repository -y ppa:skype-wrapper/ppa && sudo apt-get -qq update
sudo apt-get install -y skype-wrapper

# TODO append only once
# fix sound in Skype
sudo sed -i 's/load-module module-udev-detect.*/& tsched=0/' /etc/pulse/default.pa

# install Java browser plugin
sudo apt-get -y install icedtea-7-plugin
