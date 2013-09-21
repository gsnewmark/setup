#!/bin/bash

# install Java
sudo apt-get install -y java-common openjdk-7-jre openjdk-7-jdk openjdk-7-doc openjdk-6-jre openjdk-6-jdk openjdk-6-doc

# install Leiningen
mkdir -p ~/bin
wget -O ~/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein
chmod a+x ~/bin/lein

# install sbt
wget -O /tmp/sbt.deb http://scalasbt.artifactoryonline.com/scalasbt/sbt-native-packages/org/scala-sbt/sbt//0.12.4/sbt.deb
sudo dpkg -i /tmp/sbt.deb
sudo apt-get update
sudo apt-get install -y sbt

# install Maven
sudo apt-get install -y maven

# install Python, setuptools, pip, virtualenv
sudo apt-get install -y python python-setuptools python-dev
sudo easy_install pip
sudo pip install virtualenv

# install nvm
git clone git://github.com/creationix/nvm.git ~/.nvm

# install rbenv + ruby-build
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# install Ruby & Node.js
exec $SHELL -l
rbenv install 2.0.0-p247
rbenv rehash
rbenv global 2.0.0-p247
nvm install 0.10

# install bundler
gem install bundler

# install Heroku toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sudo sh