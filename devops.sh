#!/bin/bash

# install Virtualbox
sudo apt-get install -y virtualbox

# install vagrant + vagrant-omnibus
wget -O /tmp/vagrant.deb http://files.vagrantup.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/vagrant_1.3.5_x86_64.deb
sudo dpkg -i /tmp/vagrant.deb
vagrant plugin install vagrant-omnibus
