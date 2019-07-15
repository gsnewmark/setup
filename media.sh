#!/bin/bash

# install video player
sudo pacman -S mpv youtube-dl

# install mpd, mpd and ncmpcpp
sudo pacman -S mpd mpc ncmpcpp
mkdir -p $HOME/.mpd/playlists
touch $HOME/.mpd/{mpd.db,mpd.log,mpd.pid,mpdstate}
yay -S mpdas
cp /etc/mpdasrc $HOME/.mpdasrc
echo "Don't forget to update the mpdas scrobbler config manually"

echo '/home/gsnewmark/.config/mpd/*.log {
	weekly
	missingok
	rotate 7
	compress
	notifempty
	copytruncate
	create 600
}' | sudo tee /etc/logrotate.d/mpd

# install Calibre
sudo pacman -S calibre

# install eBook reader
yay -S foliate

# install Rockbox Utility
sudo pacman -S rbutil

# install Krita
sudo pacman -S krita

# install vector graphics editor
sudo pacman -S inkscape

# install tools to split CD rips
sudo pacman -S shntool cuetools

# install additional audio codecs
sudo pacman -S mac

# install tools to work with music tags
sudo pacman -S mp3unicode phonon-qt5-gstreamer kid3

# install DLNA server for PulseAudio
yay -S pulseaudio-dlna

# Install comix/manga reader
sudo pacman -S mcomix mupdf-tools

# Install util for CLI Chromecast casting
yay -S mkchromecast python-pychromecast

# Install sound recorder
yay -S audio-recorder
