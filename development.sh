#!/bin/bash

# install Java
sudo pacman -S jdk7-openjdk openjdk7-doc openjdk7-src \
     jdk8-openjdk openjdk8-doc openjdk8-src \
     maven visualvm
sudo archlinux-java set java-8-openjdk

# install MAT
trizen -S eclipse-mat

# install Leiningen
gpg --recv-keys 5A92E04305696D78
gpg --lsign-key 5A92E04305696D78
trizen -S leiningen

# install Boot
trizen -S boot

# install Clojure
sudo pacman -S clojure rlwrap

# install sbt
sudo pacman -S sbt

# install Python's setuptools, pip, virtualenv, conda
sudo pacman -S python-setuptools python2-setuptools python-pip python2-pip \
     python-virtualenv python2-virtualenv python-virtualenvwrapper
trizen -S python-virtualfish

trizen -S python-conda

# install Ruby
sudo pacman -S ruby

# install some Ruby-based tools
trizen -S ruby-sass

# install Haskell and some packages
sudo pacman -S cabal-install ghc happy alex stack \
     stylish-haskell hasktags ghc-mod hlint

# install Idris
sudo pacman -S idris

# install Virtualbox
sudo pacman -S qt4 virtualbox
sudo usermod -a -G vboxusers $USER

# install Vagrant
sudo pacman -S vagrant

# install Docker
sudo pacman -S docker docker-compose
sudo usermod -a -G docker gsnewmark

# install Fabric
sudo pacman -S fabric

# install Node.js and some JS utils
sudo pacman -S nodejs npm
trizen -S nodejs-tern

# install JS build tools
sudo pacman -S gulp

# install nginx
sudo pacman -S nginx

# install VeraCrypt
gpg --keyserver pgp.mit.edu --recv-keys D99E28F9CD1C0389
gpg --lsign-key D99E28F9CD1C0389
trizen -S veracrypt

# install Erlang
sudo pacman -S erlang

# install Rust
sudo pacman -S rustup rust-racer
rustup default stable
rustup component add rust-src
rustup component add rustfmt-preview

# install gdb
sudo pacman -S gdb

# install CUDA
sudo pacman -S cuda
