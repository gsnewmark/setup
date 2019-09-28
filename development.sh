#!/bin/bash

# install Java
sudo pacman -S jdk7-openjdk openjdk7-doc openjdk7-src \
     jdk8-openjdk openjdk8-doc openjdk8-src \
     maven visualvm
sudo archlinux-java set java-8-openjdk

# install MAT
yay -S eclipse-mat

# install Leiningen
gpg --recv-keys 5A92E04305696D78
gpg --lsign-key 5A92E04305696D78
yay -S leiningen

# install Clojure
sudo pacman -S clojure rlwrap
yay -S jocker

# install sbt
sudo pacman -S sbt

# install Python (setuptools, pip, pyenv, pip-env, virtualenv, conda, formatter, tk)
sudo pacman -S python-setuptools python2-setuptools python-pip python2-pip, pyenv \
               python-virtualenv python2-virtualenv python-virtualenvwrapper python-pipenv \
               python-black tk python python2

yay -S python-conda

# install Ruby
sudo pacman -S ruby

# install some Ruby-based tools
yay -S ruby-sass

# install Haskell and some packages
sudo pacman -S cabal-install ghc happy alex stack ghc-mod hlint

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

# install Node.js
sudo pacman -S nodejs npm

# install JS build tools
sudo pacman -S gulp

# install nginx
sudo pacman -S nginx

# install VeraCrypt
gpg --keyserver pgp.mit.edu --recv-keys D99E28F9CD1C0389
gpg --lsign-key D99E28F9CD1C0389
yay -S veracrypt

# install Erlang
sudo pacman -S erlang

# install Rust
sudo pacman -S rustup rust-racer musl
rustup default stable
rustup component add rust-src
rustup component add rustfmt
rustup component add clippy
yay -S cargo-outdated
cargo install cargo-check
cargo install cargo-edit

# install Go & tools for building & working with projects
sudo pacman -S go go-tools
go get -u github.com/motemen/gore
go get -u github.com/mdempsky/gocode
go get github.com/GeertJohan/go.rice
go get github.com/GeertJohan/go.rice/rice

# install gdb
sudo pacman -S gdb

# install CUDA
sudo pacman -S cuda
