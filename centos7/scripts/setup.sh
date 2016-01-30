#!/bin/bash

vbox_version=`cat ~/.vbox_version`
sudo yum -y install kernel-devel-$(uname -r) make gcc perl bzip2 bind-utils
sudo mount -o loop /home/vagrant/VBoxGuestAdditions_${vbox_version}.iso /media/
sudo sh /media/VBoxLinuxAdditions.run --nox11
sudo umount /media
sudo rm -f /home/vagrant/VBoxGuestAdditions_${vbox_version}.iso
sudo yum -y remove kernel-devel gcc cloog-ppl cpp glibc-devel glibc-headers kernel-headers libgomp mpfr ppl libmpc perl*
sudo yum -y install scl-utils
#sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum clean all
sudo sed -i '/HWADDR/ d' /etc/sysconfig/network-scripts/ifcfg-enp0s3
history -c
