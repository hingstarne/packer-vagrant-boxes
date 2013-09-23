#!/bin/bash -eux

wget https://apt.puppetlabs.com/puppetlabs-release-wheezy.deb -O /tmp/puppetlabs-release.deb
dpkg -i /tmp/puppetlabs-release.deb
apt-get -y update
apt-get -y install puppet
