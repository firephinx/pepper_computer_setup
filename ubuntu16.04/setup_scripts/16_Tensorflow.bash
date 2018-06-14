#!/bin/bash

# Install tensorflow in a virtualenv in ~/tensorflow
# based on instructions at https://www.tensorflow.org/install/install_linux#InstallingVirtualenv
# Note. In order to use tensorflow in a window, you need to run
# source ~/tensorflow/bin/activate
# export LD_LIBRARY_PATH=/usr/local/cuda/lib64/
# and then, to stop using tensorflow, you can either close the window, or you can run
# deactivate
echo -ne 'Y' | sudo apt-get install python-pip python-dev python-virtualenv python3-pip
virtualenv --system-site-packages ~/tensorflow
source ~/tensorflow/bin/activate
easy_install -U pip
pip install --upgrade tensorflow-gpu