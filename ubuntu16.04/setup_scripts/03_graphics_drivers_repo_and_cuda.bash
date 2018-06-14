#!/bin/bash

# Add graphics drivers repository and install cuda

# Add graphics drivers repository
echo -ne '\n' | sudo add-apt-repository ppa:graphics-drivers
sudo apt-get update 

# Install cuda
# Grab links from https://developer.nvidia.com/cuda-80-ga2-download-archive

# Install cuda 8.0 from local deb
wget -nc https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
sudo apt-get update
echo -ne 'Y' | sudo apt-get install cuda

# Install cuda 8.0 patch
wget -nc https://developer.nvidia.com/compute/cuda/8.0/Prod2/patches/2/cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64-deb
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64-deb
sudo apt-get update
echo -ne 'Y' | sudo apt-get upgrade cuda

# Add cuda 8.0 to path
echo 'export PATH=/usr/local/cuda-8.0/bin:${PATH}' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:${LD_LIBRARY_PATH}' >> ~/.bashrc

# Remove the repo files
rm cuda-repo-*

# Reboot the system
sudo reboot