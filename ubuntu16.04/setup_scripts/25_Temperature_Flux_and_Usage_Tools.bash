#!/bin/bash

# Install temperature sensors and CPU usage tools
echo -ne 'Y' | sudo apt-get install lm-sensors
sudo sensors-detect
sudo service kmod start
echo -ne 'Y' | sudo apt-get install psensor

echo -ne '\n' | sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get update
echo -ne 'Y' | sudo apt-get install fluxgui

sudo apt-get install indicator-multiload