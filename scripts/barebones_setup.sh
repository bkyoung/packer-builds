#!/bin/bash

sudo rpm -ivh http://ftp.osuosl.org/pub/fedora-epel/6/i386/epel-release-6-8.noarch.rpm
vbox_version=`cat ~/.vbox_version`
sudo yum -y install kernel-devel-$(uname -r) make gcc perl puppet
cd /usr/src/kernels/$(ls -1 /usr/src/kernels/)/include/drm/  
sudo ln -s /usr/include/drm/drm.h drm.h  
sudo ln -s /usr/include/drm/drm_sarea.h drm_sarea.h  
sudo ln -s /usr/include/drm/drm_mode.h drm_mode.h  
sudo ln -s /usr/include/drm/drm_fourcc.h drm_fourcc.h
sudo mount -o loop /home/vagrant/VBoxGuestAdditions_${vbox_version}.iso /media/
sudo /media/VBoxLinuxAdditions.run --nox11
sudo umount /media
rm -f /home/vagrant/VBoxGuestAdditions_${vbox_version}.iso
sudo yum -y remove kernel-devel gcc cloog-ppl cpp glibc-devel glibc-headers kernel-headers libgomp mpfr ppl
sudo yum clean all
history -c
