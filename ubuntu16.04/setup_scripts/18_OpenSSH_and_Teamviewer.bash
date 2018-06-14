#!/bin/bash

# Install OpenSSH
echo -ne 'Y' | sudo apt-get install openssh-server

# Install Teamviewer
cd ~/Downloads
wget -nc https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
echo -ne 'Y' | sudo apt-get install ./teamviewer_amd64.deb

# Clean Up
rm teamviewer_amd64.deb

echo -ne 'Y' | sudo apt-get install virtualbox