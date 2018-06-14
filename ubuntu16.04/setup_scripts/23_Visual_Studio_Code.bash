#!/bin/bash

# Install Visual Studio Code

# Go to the downloads folder
cd ~/Downloads

sudo dpkg -i code_1.21.1-1521038896_amd64.deb
echo -ne 'Y' | sudo apt-get install -f  

# Remove downloaded files
rm code_1.21.1-1521038896_amd64.deb

# install mono extension
code --install-extension ms-vscode.mono-debug

