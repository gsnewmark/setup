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

# install Haskell and some packages
sudo pacman -S cabal-install ghc happy alex haddock
cabal update
cabal install ghc-mod structured-haskell-mode stylish-haskell

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
