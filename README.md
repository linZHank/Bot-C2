# Bot-C2
This repository is forked from [jetsonhacks](https://github.com/jetsonhacks/installJetsonBot)

The Bot-C2 is a ROS Turtlebot based robot using a NVIDIA Jetson TX2 and an iRobot Create 2 base.

There are two possible installations from the scripts in this repository:

1) Install on Jetson TX2 on a JetsonBot 

2) Install Robot Operating Center (ROC) on a separate Jetson or PC

The first two steps are the same for both installations.
The scripts assume a clean installation of ROS.

First build a catkin workspace for the installation. The directory will be named ~/botc2_ws

1) $ ./createBotC2WS.sh

Second install the TurtleBot software and dependencies

2) $ ./installBotC2.sh

The third step sets up environment variables in ~/.bashrc which configure the Bot-C2

For the Bot-C2 itself:

$ ./setupBot.sh

For the Robot Operating Center:

$ ./setupROC.sh

In both cases, there will need to be some adjustment of the IP addresses of the machines involved.
Edit ~/.bashrc and go to the end of the file.

The environment variable ROS_MASTER_URI should point to the IP address of the Bot-C2 which you wish to communicate.
The environment variable ROS_IP should be the address of the machine where bashrc is running.

For convenience, you may also want to add alias shortcuts for some commonly used command line. Some of these are in the file 'aliasShortcuts.txt'.

After changing bashrc, make sure to save it. After closing, you will either have to open a Terminal, or:
$ source ~/.bashrc
for the changes to bashrc to take effect.






