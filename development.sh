#!/bin/bash

# install Java
sudo pacman -S jdk7-openjdk openjdk7-doc openjdk7-src jdk8-openjdk openjdk8-doc openjdk8-src maven
yaourt -S jdk6-compat jdk7-compat jdk8-compat
sudo archlinux-java set java-8-openjdk

# install Leiningen
mkdir -p $HOME/bin
wget -O $HOME/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein
chmod a+x $HOME/bin/lein

# install Boot
wget -O $HOME/bin/boot https://github.com/boot-clj/boot/releases/download/2.0.0-rc9/boot.sh
chmod a+x $HOME/bin/boot

# install sbt
sudo pacman -S sbt

# install Python's setuptools, pip, virtualenv
sudo pacman -S python-setuptools
sudo easy_install pip
sudo pip install virtualenv

# install Ruby
sudo pacman -S ruby
yaourt -S ruby-bundler

# add Haskell-specific repo, install Haskell and some packages
awk -v RS='' '/\[core\]/ { print; print "[haskell-core]"; print "Server = http://xsounds.org/~haskell/core/$arch"; next }1' /etc/pacman.conf > pacman.conf.tmp && sudo
mv pacman.conf.tmp /etc/pacman.conf
sudo pacman-key -r 4209170B
sudo pacman-key --lsign-key 4209170B
sudo pacman -Syy
sudo pacman -S cabal-install ghc happy alex haskell-ghc-mod haskell-stylish-haskell haskell-hasktags

# install Virtualbox
sudo pacman -S qt4 virtualbox
sudo usermod -a -G vboxusers $USER

# install Vagrant
yaourt -S vagrant-git

# install Docker
sudo pacman -S docker
sudo usermod -a -G docker gsnewmark

# install Node.js
sudo pacman -S nodejs

# install PhantomJS
sudo pacman -S phantomjs

# install nginx
sudo pacman -S nginx

# install TrueCrypt
sudo pacman -S truecrypt

# install TernJS and ESLint
sudo npm install -g tern eslint
