#!/bin/bash
echo "Vagrant Deployer Ajis, Akan download Vagrantfile dan replace dengan clone dari repo rootlyt"
vagrant init ubuntu/bionic64
git clone https://github.com/rootlyt/vagrant
cd vagrant
cp -f Vagrantfile ../
vagrant up
vagrant ssh
sudo apt update
sudo apt install -y git
sudo apt install -y apache2
echo "Deploy sukses, ip http://192.168.56.100/ sudah bisa diakses di local browser"