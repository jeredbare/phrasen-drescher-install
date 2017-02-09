#!/bin/bash

# updates the system
sudo apt update -y && sudo apt upgrade -y
# installs dependencies
sudo apt install gcc libssh2-1-dev libssl-dev libgpgme11-dev make -y
# downloads the package
sudo wget http://leidecker.info/projects/phrasendrescher/phrasendrescher-1.2.2b.tar.gz
# untar the directory
tar -zxvf phrasendrescher-1.2.2b.tar.gz
# change to the directory
cd phrasendrescher-1.2.2b/
# starts the configuration script
sudo ./configure --with-plugins
# make and make install
sudo make && sudo make install
