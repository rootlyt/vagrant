#!/bin/bash
echo "Vagrant Deployer Ajis, Akan download Vagrantfile dan replace dengan clone dari repo rootlyt"
vagrant init ubuntu/bionic64
git clone https://github.com/rootlyt/vagrant
cd vagrant
cp -f Vagrantfile ../
echo "ip http://192.168.56.100/ sudah bisa dilihat pada banner status saat telah masuk SSH "
vagrant up
vagrant ssh