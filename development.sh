#!/bin/bash

# install Java
sudo pacman -S jdk7-openjdk openjdk7-doc openjdk7-src \
     jdk8-openjdk openjdk8-doc openjdk8-src \
     maven visualvm
yaourt -S jdk
sudo archlinux-java set java-8-openjdk

# install MAT
yaourt -S eclipse-mat

# install Leiningen
gpg --recv-keys 5A92E04305696D78
gpg --lsign-key 5A92E04305696D78
yaourt -S leiningen

# install Boot
yaourt -S boot

# install Planck CLJS REPL
yaourt -S planck-git

# install sbt
sudo pacman -S sbt

# install Python's setuptools, pip, virtualenv
sudo pacman -S python-setuptools python2-setuptools python-pip python2-pip \
     python-virtualenv python2-virtualenv python-virtualenvwrapper

# install Ruby
sudo pacman -S ruby

# install Haskell and some packages
sudo pacman -S cabal-install ghc happy alex stack \
     stylish-haskell hasktags ghc-mod hlint

# install Virtualbox
sudo pacman -S qt4 virtualbox
sudo usermod -a -G vboxusers $USER

# install Vagrant
sudo pacman -S vagrant

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

# install Erlang
sudo pacman -S erlang

# install Rust
yaourt -S rustup rust-src rust-racer rustfmt
rustup default stable

# install Go & tools for building projects
sudo pacman -S go
yaourt -S gb
go get github.com/GeertJohan/go.rice
go get github.com/GeertJohan/go.rice/rice
