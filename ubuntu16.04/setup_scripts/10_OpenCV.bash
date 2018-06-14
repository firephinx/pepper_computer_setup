#!/bin/bash

# Install OpenCV 3.4.1

# Initial update of system
sudo apt-get update
echo -ne 'Y' | sudo apt-get upgrade

# Install OpenCV 3.4.1
# Instructions from here: https://docs.opencv.org/3.4.1/d7/d9f/tutorial_linux_install.html

# Install prerequisites
echo -ne 'Y' | sudo apt-get install build-essential
echo -ne 'Y' | sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
echo -ne 'Y' | sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
echo -ne 'Y' | sudo apt-get install libavresample-dev libleptonica-dev tesseract-ocr libtesseract-dev libgstreamer-plugins-base1.0-dev libgphoto2-dev libgoogle-glog-dev libatlas-base-dev libopenblas-dev
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
echo -ne 'Y' | pip install --upgrade pip
echo -ne 'Y' | pip install testresources --user
echo -ne 'Y' | pip install jinja2 --user

# Download and untar OpenCV 3.4.1
cd ~/Documents
wget -nc https://github.com/opencv/opencv/archive/3.4.1.tar.gz
tar -xvf 3.4.1.tar.gz

# Download and untar OpenCV 3.4.1 contrib modules inside the OpenCV 3.4.1 folder
cd opencv-3.4.1
wget -nc https://github.com/opencv/opencv_contrib/archive/3.4.1.tar.gz
tar -xvf 3.4.1.tar.gz

mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=Release -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib-3.4.1/modules -D CMAKE_INSTALL_PREFIX=/usr/local ..

make -j12

sudo make install

# Clean up
cd ..

rm 3.4.1.tar.gz

cd ..

rm 3.4.1.tar.gz