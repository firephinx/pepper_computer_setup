#!/bin/bash

# Install Hokuyo URG-04LX-UG01 LIDAR ROS Packages

cd ~/catkin_ws/src/

git clone https://github.com/ros-drivers/urg_node.git
git clone https://github.com/ros-drivers/urg_c.git
git clone https://github.com/ros-perception/laser_proc.git 