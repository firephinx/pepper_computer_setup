#!/bin/bash

# Clone OpenPose with installation instructions
cd ~/Documents

git clone https://github.com/CMU-Perceptual-Computing-Lab/openpose.git

sudo apt-get --assume-yes update
sudo apt-get --assume-yes install build-essential
# General dependencies
sudo apt-get --assume-yes install libatlas-base-dev libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev protobuf-compiler
sudo apt-get --assume-yes install --no-install-recommends libboost-all-dev
# Remaining dependencies, 14.04
sudo apt-get --assume-yes install libgflags-dev libgoogle-glog-dev liblmdb-dev
# Python libs
pip install --upgrade numpy protobuf --user

cd openpose

mkdir build; cd build; cmake .. ;

echo "Now you must go into the openpose folder in Documents, then enter the ubuntu folder and open the Makefile.config.Ubuntu16_cuda8.example."
echo "Modify the file so that OPENCV_VERSION := 3 is uncommented."
echo "Then go back to the openpose folder and open CMakeLists.txt"
echo "Scroll down to line 528 and switch -DUSE_OPENCV to ON and then insert -DBLAS=MKL on a new line after it. Save the file.)"
echo "Then run 12_OpenPose.bash"