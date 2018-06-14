#!/bin/bash

# Clone the cv_bridge, gflags, and github folders into the catkin_ws

# Copy the cv_bridge folder into catkin_ws
cd ~/Documents
git clone https://github.com/ros-perception/vision_opencv.git

cd vision_opencv
cp -r cv_bridge ~/catkin_ws/src/

cd ~/catkin_ws/src

# Clone the darknet_ros repository into catkin_ws
git clone --recursive https://github.com/leggedrobotics/darknet_ros.git

# Clone projects from Github
git clone https://github.com/firephinx/openpose_ros.git
git clone https://github.com/firephinx/rcah18_pepper_navigation.git
git clone https://github.com/firephinx/rcah18_pepper_msgs.git
git clone https://github.com/firephinx/rcah18_pepper_vision.git
git clone https://github.com/firephinx/rcah18_pepper_controller.git
git clone https://github.com/firephinx/rcah18_pepper_speech.git


echo "Modify the files in pepper_vision according to the instructions at: https://cardinaltetra.coral.cs.cmu.edu/gitlab/pepper/pepper_vision"
echo "Then cd ~/catkin_ws and run catkin_make"