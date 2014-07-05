#!/bin/bash

# install Java
sudo pacman -S jdk7-openjdk maven
yaourt -S jdk6-compat jdk7-compat

# install Leiningen
mkdir -p $HOME/bin
wget -O $HOME/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein
chmod a+x $HOME/bin/lein

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
sudo pacman -S cabal-install ghc happy alex haddock haskell-ghc-mod haskell-stylish-haskell

# install Heroky toolbelt
yaourt -S heroku-toolbelt

# install Virtualbox
sudo pacman -S qt4 virtualbox
sudo usermod -a -G vboxusers $USER

# install Vagrant
yaourt -S vagrant-git

# install Node.js
sudo pacman -S nodejs

# install PhantomJS
sudo pacman -S phantomjs

# install TrueCrypt
sudo pacman -S truecrypt
