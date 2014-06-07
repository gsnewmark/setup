#!/bin/bash

# install Java
sudo pacman -S --noconfirm jdk7-openjdk maven
yaourt -S --noconfirm jdk6-compat jdk7-compat

# install Leiningen
mkdir -p $HOME/bin
wget -O $HOME/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein
chmod a+x $HOME/bin/lein

# install sbt
sudo pacman -S --noconfirm sbt

# install Python's setuptools, pip, virtualenv
sudo pacman -S --noconfirm python-setuptools
sudo easy_install pip
sudo pip install virtualenv

# install Ruby
sudo pacman -S --noconfirm ruby
yaourt -S --noconfirm ruby-bundler

# install Heroky toolbelt
yaourt -S --noconfirm heroku-toolbelt

# install Virtualbox
sudo pacman -S --noconfirm qt4 virtualbox
sudo usermod -a -G vboxusers $USER

# install Vagrant
yaourt -S --noconfirm vagrant-git

# install Node.js
sudo pacman -S --noconfirm nodejs

# install PhantomJS
sudo pacman -S --noconfirm phantomjs

# install TrueCrypt
sudo pacman -S --noconfirm truecrypt
