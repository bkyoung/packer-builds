#!/bin/bash
 
# Sudoers
echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant
chmod 440 /etc/sudoers.d/vagrant

# Install vagrant keys
mkdir -m 700 ~vagrant/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O ~vagrant/.ssh/authorized_keys
chmod 600 ~vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant ~vagrant/.ssh

# Install Guest Additions
vbox_version=`cat ~/.vbox_version`
mount -o loop ~/VBoxGuestAdditions_${vbox_version}.iso /media/
/media/VBoxLinuxAdditions.run --nox11
umount /media
rm -f ~/VBoxGuestAdditions_${vbox_version}.iso

echo "Box Image Created: $(date)" >> /etc/motd
history -c
