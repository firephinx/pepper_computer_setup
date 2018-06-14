#!/bin/bash

# Install Intel MKL

# Go to the downloads folder
cd ~/Downloads

# Untar the files
tar -xvf l_mkl_2018.1.163.tgz

# Run the GUI installer
cd l_mkl_2018.1.163
./install_GUI.sh

# Clean up files
rm -rf l_mkl_2018*

# Add path to .bashrc file
echo "export LD_LIBRARY_PATH=/opt/intel/compilers_and_libraries/linux/mkl/lib/intel64:/opt/intel/compilers_and_libraries/linux/lib/intel64:${LD_LIBRARY_PATH}" >> ~/.bashrc
source ~/.bashrc