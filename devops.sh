#!/bin/bash

# install Virtualbox
sudo apt-get install dkms
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian precise contrib" >> /etc/apt/sources.list.d/virtualbox.list'
sudo apt-get update
sudo apt-get install -y virtualbox-4.2

# install vagrant + vagrant-omnibus
wget -O /tmp/vagrant.deb http://files.vagrantup.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/vagrant_1.3.5_x86_64.deb
sudo dpkg -i /tmp/vagrant.deb
vagrant plugin install vagrant-omnibus
