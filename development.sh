#!/bin/bash

# install Java
sudo pacman -S jdk7-openjdk openjdk7-doc openjdk7-src \
     jdk8-openjdk openjdk8-doc openjdk8-src \
     maven visualvm
yaourt -S jdk
sudo archlinux-java set java-8-openjdk

# install Leiningen
gpg --recv-keys 5A92E04305696D78
gpg --lsign-key 5A92E04305696D78
yaourt -S leiningen

# install Boot
yaourt -S boot

# install sbt
sudo pacman -S sbt

# install Python's setuptools, pip, virtualenv
sudo pacman -S python-setuptools python2-setuptools python-pip python2-pip \
     python-virtualenv python2-virtualenv python-virtualenvwrapper

# install Ruby
sudo pacman -S ruby

# add Haskell-specific repo, install Haskell and some packages
awk -v RS='' '/\[core\]/ { print; print "[haskell-core]"; print "Server = http://xsounds.org/~haskell/core/$arch"; next }1' /etc/pacman.conf > pacman.conf.tmp && \
    sudo mv pacman.conf.tmp /etc/pacman.conf
sudo pacman-key -r 4209170B
sudo pacman-key --lsign-key 4209170B
sudo pacman -Syy
sudo pacman -S cabal-install ghc happy alex \
     haskell-stylish-haskell haskell-hasktags haskell-ghc-mod haskell-hlint
yaourt -S haskell-stack

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

# install JS build tools
sudo pacman -S gulp

# install PhantomJS
sudo pacman -S phantomjs

# install nginx
sudo pacman -S nginx

# install VeraCrypt
gpg --keyserver pgp.mit.edu --recv-keys D99E28F9CD1C0389
gpg --lsign-key D99E28F9CD1C0389
yaourt -S veracrypt
