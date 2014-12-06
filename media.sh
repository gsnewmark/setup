#!/bin/bash

# install deadbeef and VLC
sudo pacman -S vlc

# install mpd, mpd and ncmpcpp
sudo pacman -S mpd mpc ncmpcpp
mkdir -p $HOME/.mpd/playlists
touch $HOME/.mpd/{mpd.db,mpd.log,mpd.pid,mpdstate}
yaourt -S mpdscribble
mkdir $HOME/.mpdscribble
cp /usr/share/mpdscribble/mpdscribble.conf.example $HOME/.mpdscribble/mpdscribble.conf

# install Calibre
sudo pacman -S calibre

# install Rockbox Utility
sudo pacman -S rbutil

# install GIMP
sudo pacman -S gimp
