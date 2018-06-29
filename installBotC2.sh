#!/bin/sh
# Installs the required packages and nodes for the JetsonBot
cd ~/
_dir="botc2_ws/src"
# Check to make sure that the JetsonBot catkin directory exists
[ ! -d "$_dir" ] && { echo "Error: Directory $_dir not found.\nPlease run createBotC2WS.sh to create the Bot-C2 catkin workspace."; exit 2; }
# Install TurtleBot from repository
sudo apt-get install ros-kinetic-turtlebot ros-kinetic-turtlebot-apps \
ros-kinetic-turtlebot-interactions ros-kinetic-ar-track-alvar-msgs \
ros-kinetic-collada-urdf -y
#(In TK1 tutorial they installed ros-indigo-rocon-remocon ros-indigo-rocon-qt-library, but cannot find these two in ros-kinetic)

cd ~/botc2_ws/src
git clone https://github.com/jetsonhacks/turtlebot.git
git clone https://github.com/jetsonhacks/turtlebot_create.git
git clone https://github.com/jetsonhacks/turtlebot_interactions.git
# This is to get rviz to work; Apparently there's an issue in earlier versions not
# parsing collada file formats correctly under ARM
git clone https://github.com/jetsonhacks/robot_model.git
# This fixes an issue with navigation - laser map of RGBD camera was out of bounds
git clone -b laser_centered https://github.com/jetsonhacks/slam_gmapping.git

catkin build
# cd ..
# catkin_make
/bin/echo -e "\e[1;32mBot-C2 Software Installed.\e[0m"

