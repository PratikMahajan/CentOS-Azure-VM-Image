#!/bin/bash

VER=1.4.4

echo "Downloading Packer"
curl -O https://releases.hashicorp.com/packer/${VER}/packer_${VER}_linux_amd64.zip
echo "Downloading UNZIP utility"
sudo yum install -y unzip
sudo unzip -d /usr/local packer_${VER}_linux_amd64.zip
sudo mv /usr/sbin/packer /usr/sbin/packerlegacy
sudo ln -s /usr/local/packer /usr/local/bin/packer
sudo rm packer_${VER}_linux_amd64.zip

sudo rm -r /home/centos/*