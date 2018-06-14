#!/bin/bash

# Install cuDNN 6.0

# Go to the downloads folder
cd ~/Downloads

# Untar the files
tar -zxf cudnn-8.0-linux-x64-v6.0.tgz

# Copy the files into the cuda directories
cd cuda
sudo cp lib64/* /usr/local/cuda/lib64/
sudo cp include/* /usr/local/cuda/include/

# Remove downloaded files
cd ~/Downloads
rm cudnn-8.0-linux-x64-v6.0.tgz

rm -rf cuda
