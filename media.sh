#!/bin/bash

# install deadbeef and VLC
sudo pacman -S vlc deadbeef

# install mpd, mpd and ncmpcpp
sudo pacman -S mpd mpc ncmpcpp
mkdir -p $HOME/.mpd/playlists
touch $HOME/.mpd/{mpd.db,mpd.log,mpd.pid,mpdstate}
yaourt -S mpdscribble
mkdir $HOME/.mpdscribble
cp /usr/share/mpdscribble/mpdscribble.conf.example $HOME/.mpdscribble/mpdscribble.conf

# install Infobar plugin for deadbeef
wget -O /tmp/deadbeef-infobar.zip http://sourceforge.net/projects/deadbeef/files/plugins/ddb_infobar-x86_64-1.4-171.zip/download
mkdir -p ~/.local/lib/deadbeef
unzip /tmp/deadbeef-infobar.zip -d ~/.local/lib/deadbeef/
mv ~/.local/lib/deadbeef/plugins/* ~/.local/lib/deadbeef
rmdir ~/.local/lib/deadbeef/plugins

# install Calibre
sudo pacman -S calibre

# install Rockbox Utility
sudo pacman -S rbutil

# install GIMP
sudo pacman -S gimp
