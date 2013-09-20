#!/bin/bash -eux

apt-get -y install curl
curl -L http://www.opscode.com/chef/install.sh | sudo bash