#!/bin/bash

# Install dlib-19.12
# Download and untar dlib-19.12
cd ~/Documents
wget -nc http://dlib.net/files/dlib-19.12.tar.bz2
tar -vxjf dlib-19.12.tar.bz2

cd dlib-19.12

mkdir build; cd build; cmake .. ; cmake --build .

sudo make install

cd ..

sudo python setup.py install

cd ..

rm dlib-19.12.tar.bz2

# Clone the dlib-models repository inside the dlib folder
git clone https://github.com/davisking/dlib-models.git
cd dlib-models
bzip2 -d dlib_face_recognition_resnet_model_v1.dat.bz2
bzip2 -d shape_predictor_68_face_landmarks.dat.bz2
bzip2 -d shape_predictor_5_face_landmarks.dat.bz2