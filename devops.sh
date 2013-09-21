#!/bin/bash

# install Virtualbox
sudo apt-get install -y virtualbox

# install vagrant + vagrant-omnibus
wget -O /tmp/vagrant.deb http://files.vagrantup.com/packages/7e400d00a3c5a0fdf2809c8b5001a035415a607b/vagrant_1.2.2_x86_64.deb
sudo dpkg -i /tmp/vagrant.deb
vagrant plugin install vagrant-omnibus

# install and configure Chef
gem install chef knife-solo librarian-chef
rbenv rehash
knife configure --defaults
ssh-keygen -f ~/.chef/$USER.pem
