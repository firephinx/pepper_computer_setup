#!/bin/bash

# Install OpenPose
cd ~/Documents/openpose/build

cmake .. ; make -j12

sudo make install