#!/bin/bash

sudo yum makecache fast
sudo yum -y upgrade
sudo yum clean all
sudo /sbin/reboot
