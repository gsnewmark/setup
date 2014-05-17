#!/bin/bash

# install deadbeef and VLC
sudo pacman -S --noconfirm vlc deadbeef

# install Infobar plugin for deadbeef
wget -O /tmp/deadbeef-infobar.zip http://sourceforge.net/projects/deadbeef/files/plugins/ddb_infobar-x86_64-1.4-171.zip/download
mkdir -p ~/.local/lib/deadbeef
unzip /tmp/deadbeef-infobar.zip -d ~/.local/lib/deadbeef/
mv ~/.local/lib/deadbeef/plugins/* ~/.local/lib/deadbeef
rmdir ~/.local/lib/deadbeef/plugins

# install Calibre
sudo pacman -S --noconfirm calibre

# install Rockbox Utility
sudo pacman -S --noconfirm rbutil

# install GIMP
sudo pacman -S --noconfirm gimp
