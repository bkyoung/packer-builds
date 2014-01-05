packer-centos
=============

This packer config produces a minimal CentOS vagrant box for VirtualBox with guest additions installed.

I used the following tools and versions for the build infrastructure:
* [Ubuntu Linux](http://ubuntu.com/) (13.10 amd64)
* [VirtualBox](http://virtualbox.org/) (4.3.6)
* [Packer](http://packer.io) (0.5.1)
* [Vagrant](http://vagrantup.com) (1.4.2)

The VM itself is kickstarted from a CentOS-6.5-x86_64-minimal iso.

This example was largely taken from (at least inspired by) a [blog post](http://blog.codeship.io/2013/11/07/building-vagrant-machines-with-packer.html) at codeship.io.

Notes
=====
* this box has the vagrant user added and uses the publicly available vagrant (insecure) ssh key
* There is a bare bones Vagrantfile included to spin up the base box that gets created
