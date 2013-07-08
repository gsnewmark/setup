#!/bin/bash

# enable TRIM support
echo '#!/bin/sh
LOG=/var/log/trim.log
echo "*** $(date -R) ***" >> $LOG
fstrim -v / >> $LOG' | sudo tee /etc/cron.daily/trim

# enable MultiArch
sudo dpkg --add-architecture i386

# add Canonical partner repository
sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

# remove unneeded standard software
sudo apt-get remove -y unity-lens-shopping unity-scope-musicstores shotwell brasero totem rhytmbox empathy

# install tlp
sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt-get -y update
sudo apt-get -y install tlp tlp-rdw smartmontools ethtool tp-smapi-dkms acpi-call-tools
sudo tlp start

# install Unity Tweak Tool
sudo apt-get -y install unity-tweak-tool

# install codecs, Java
sudo apt-get -y install ubuntu-restricted-extras libavformat-extra-53 libavcodec-extra-53 icedtea-7-plugin openjdk-7-jre openjdk-7-jdk

# install git
sudo apt-get -y install git-core

# install Skype
sudo apt-get -y update && sudo apt-get -y install skype
sudo add-apt-repository -y ppa:skype-wrapper/ppa && sudo apt-get -qq update
sudo apt-get -y install skype-wrapper

# TODO append only once
# fix sound in Skype
sudo sed -i 's/load-module module-udev-detect.*/& tsched=0/' /etc/pulse/default.pa

# install emacs24
sudo apt-add-repository -y ppa:cassou/emacs && sudo apt-get update
sudo apt-get -y install emacs24

# install vim
sudo apt-get -y install vim-gnome vim

# install nemo (+ dropbox) and make it default file manager
sudo add-apt-repository -y ppa:gwendal-lebihan-dev/cinnamon-stable
sudo apt-get update
sudo apt-get -y install nemo nemo-compare nemo-dropbox nemo-fileroller nemo-pastebin nemo-seahorse nemo-share
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true

# install vlc
sudo add-apt-repository -y ppa:n-muench/vlc
sudo apt-get update
sudo apt-get -y install vlc

# install clementine
sudo add-apt-repository -y ppa:me-davidsansome/clementine
sudo apt-get update
sudo apt-get -y install clementine

# install audacious
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get -y install audacious audacious-plugins

# install chromium
sudo apt-get -y install chromium-browser

# install conkeror
sudo apt-key adv --keyserver pgp.uni-mainz.de --recv-keys 0F84088E
echo 'deb     http://noone.org/conkeror-nightly-debs sid main
deb-src http://noone.org/conkeror-nightly-debs sid main' | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y --force-yes install conkeror
mkdir -p ~/.local/share/applications
cp conkeror.desktop ~/.local/share/applications/
update-desktop-database ~/.local/share/applications

# install virtualbox
sudo apt-get -y install virtualbox

# install vagrant
wget -O /tmp/vagrant.deb http://files.vagrantup.com/packages/7e400d00a3c5a0fdf2809c8b5001a035415a607b/vagrant_1.2.2_x86_64.deb
sudo dpkg -i /tmp/vagrant.deb

# install leiningen
mkdir -p ~/bin
wget -O ~/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein
chmod a+x ~/bin/lein

# install zsh and set it as default shell
sudo apt-get -y install zsh
chsh -s /bin/zsh

# install themes, icons
sudo add-apt-repository -y ppa:webupd8team/themes
sudo add-apt-repository -y ppa:tiheum/equinox
sudo apt-get update
sudo apt-get -y install mediterraneannight-gtk-theme faenza-icon-theme faience-icon-theme

# install variety wallpaper changer
sudo add-apt-repository -y ppa:peterlevi/ppa
sudo apt-get update
sudo apt-get -y install variety

# checkout and activate dotfiles
cd $HOME
git clone --recursive git@github.com:gsnewmark/dotfiles.git
cd dotfiles
./bootstrap
