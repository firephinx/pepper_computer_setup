#!/bin/bash

# Install the python bindings for opencv so that you can run "import cv2" in python
# based on instructions at https://foxrow.com/installing-opencv-in-a-virtualenv
# also install scipy
pip install opencv-python --user
pip install scipy --user
pip install scikit-image --user
pip install viz --user
pip install h5py --user
pip install tkinter --user
sudo apt-get install python3-tk
sudo easy_install viz