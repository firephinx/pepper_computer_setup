#!/bin/bash

# Install VirtualBox for Pepper VM
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" >> /etc/apt/sources.list'

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add 

sudo apt update

sudo apt install virtualbox-5.2 

# If you run into errors, try following instructions here: https://askubuntu.com/questions/900794/virtualbox-rtr3initex-failed-with-rc-1912-rc-1912