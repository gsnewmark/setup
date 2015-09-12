#!/bin/bash

# install Java
sudo pacman -S jdk7-openjdk openjdk7-doc openjdk7-src \
     jdk8-openjdk openjdk8-doc openjdk8-src \
     maven visualvm
yaourt -S jdk
sudo archlinux-java set java-8-openjdk

# install Leiningen
yaourt -S leiningen

# install Boot
yaourt -S boot

# install sbt
sudo pacman -S sbt

# install Python's setuptools, pip, virtualenv
sudo pacman -S python-setuptools
sudo easy_install pip
sudo pip install virtualenv

# install Ruby
sudo pacman -S ruby

# add Haskell-specific repo, install Haskell and some packages
awk -v RS='' '/\[core\]/ { print; print "[haskell-core]"; print "Server = http://orbitalfox.com/haskell/core/$arch"; next }1' /etc/pacman.conf > pacman.conf.tmp && \
    sudo mv pacman.conf.tmp /etc/pacman.conf
sudo pacman-key -r 4209170B
sudo pacman-key --lsign-key 4209170B
sudo pacman -Syy
sudo pacman -S cabal-install ghc happy alex \
     haskell-stylish-haskell haskell-hasktags haskell-ghc-mod

# install Virtualbox
sudo pacman -S qt4 virtualbox
sudo usermod -a -G vboxusers $USER

# install Vagrant
yaourt -S vagrant-git

# install Docker
sudo pacman -S docker
sudo usermod -a -G docker gsnewmark

# install Fabric
sudo pacman -S fabric

# install Node.js and some JS utils
sudo pacman -S nodejs npm
yaourt -S nodejs-tern

# install PhantomJS
sudo pacman -S phantomjs

# install nginx
sudo pacman -S nginx

# install VeraCrypt
yaourt -S veracrypt

# install git flow extensions
yaourt -S git-flow
