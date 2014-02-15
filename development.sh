#!/bin/bash

# install Java
sudo apt-get install -y java-common openjdk-7-jre openjdk-7-jdk openjdk-7-doc openjdk-6-jre openjdk-6-jdk openjdk-6-doc maven

# use Java 7 as default
sudo update-java-alternatives -s java-1.7.0-openjdk-amd64

# install Leiningen
mkdir -p ~/bin
wget -O ~/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein
chmod a+x ~/bin/lein

# install sbt
wget -O /tmp/sbt.deb http://repo.scala-sbt.org/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.13.0/sbt.deb
sudo dpkg -i /tmp/sbt.deb
sudo apt-get update
sudo apt-get install -y sbt

# install Python, setuptools, pip, virtualenv
sudo apt-get install -y python python3 python-setuptools python-dev
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

# install Virtualbox
sudo apt-get install dkms
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian precise contrib" >> /etc/apt/sources.list.d/virtualbox.list'
sudo apt-get update
sudo apt-get install -y virtualbox-4.3
sudo usermod -a -G vboxusers gsnewmark

# install Vagrant
wget -O /tmp/vagrant.deb https://dl.bintray.com/mitchellh/vagrant/vagrant_1.4.1_x86_64.deb
sudo dpkg -i /tmp/vagrant.deb

# install PhantomJS
sudo wget https://phantomjs.googlecode.com/files/phantomjs-1.9.2-linux-x86_64.tar.bz2 -O /usr/local/share/phantomjs.tar.bz2
cd /usr/local/share/
sudo tar xjf phantomjs.tar.bz2
sudo ln -s /usr/local/share/phantomjs-1.9.2-linux-x86_64/bin/phantomjs /usr/bin/phantomjs
sudo rm /usr/local/share/phantomjs.tar.bz2

# install Racket
sudo add-apt-repository -y ppa:plt/racket
sudo apt-get update
sudo apt-get install -y racket
