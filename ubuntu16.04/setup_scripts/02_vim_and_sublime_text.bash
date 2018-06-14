#!/bin/bash

# Install vim and sublime-text

# Initial update of system
sudo apt-get update
echo -ne 'Y' | sudo apt-get upgrade

# Install vim
echo -ne 'Y' | sudo apt-get install vim

# Install sublime-text
wget -nc -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
echo -ne 'Y' | sudo apt-get install sublime-text
