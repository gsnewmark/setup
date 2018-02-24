#!/bin/bash

# install video player
sudo pacman -S mpv youtube-dl

# install mpd, mpd and ncmpcpp
sudo pacman -S mpd mpc ncmpcpp
mkdir -p $HOME/.mpd/playlists
touch $HOME/.mpd/{mpd.db,mpd.log,mpd.pid,mpdstate}
trizen -S mpdas
cp /etc/mpdasrc $HOME/.mpdasrc
echo "Don't forget to update the mpdas scrobbler config manually"

# install Calibre
sudo pacman -S calibre

# install Rockbox Utility
sudo pacman -S rbutil

# install GIMP
sudo pacman -S gimp

# install vector graphics editor
sudo pacman -S inkscape

# install tools to split CD rips
sudo pacman -S shntool cuetools

# install tools to work with music tags
sudo pacman -S easytag mp3unicode
