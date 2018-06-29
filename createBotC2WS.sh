#!/bin/sh
# Create a ROS catkin workspace for Bot-C2
# Bot-C2 is a ROS TurtleBot derived robot using the NVIDIA Jetson TX2
# This script assumes that ROS Kinetic and catkin command line tools has already been installed on the Jetson
mkdir -p ~/botc2_ws/src
cd ~/botc2_ws
catkin init
# cd src
# catkin build


