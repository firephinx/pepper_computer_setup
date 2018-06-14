#!/bin/bash

# Install ROS Kinetic Kame

# Initial update of system
sudo apt-get update
echo -ne 'Y' | sudo apt-get upgrade

# Install ROS Kinetic Kame
# Instructions from here: http://wiki.ros.org/kinetic/Installation/Ubuntu
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update
echo -ne 'Y' | sudo apt-get install ros-kinetic-desktop-full

sudo rosdep init
rosdep update

echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

echo -ne 'Y' | sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential

# Create catkin_ws
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

catkin_make

# Install ROS navigation packages
echo -ne 'Y' | sudo apt-get install ros-kinetic-navigation
echo -ne 'Y' | sudo apt-get install ros-kinetic-gmapping ros-kinetic-joy ros-kinetic-teleop-twist-joy ros-kinetic-pointcloud-to-laserscan ros-kinetic-gmapping ros-kinetic-teleop-twist-joy ros-kinetic-joy ros-kinetic-pointcloud-to-laserscan
echo -ne 'Y' | sudo apt-get install ros-kinetic-move-base-msgs ros-kinetic-octomap ros-kinetic-octomap-msgs ros-kinetic-humanoid-msgs ros-kinetic-humanoid-nav-msgs ros-kinetic-camera-info-manager ros-kinetic-camera-info-manager-py
# ros-kinetic-driver-base does not exist and is deprecated

# Install Pepper ROS packages
echo -ne 'Y' | sudo apt-get install ros-kinetic-pepper-.*

# Install catkin build
echo -ne 'Y' | sudo apt-get install python-catkin-tools