#!/usr/bin/bash

#include content of pub.sh
source ./pub.sh

#Lift pen
ros2 service call /turtle1/set_pen turtlesim/srv/SetPen  "{'off': 1}"
#Set turtle to new coordinate
ros2 service call /turtle1/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 4, y: 3, theta: 0.0}"

#Set pen to red and lower pen
ros2 service call /turtle1/set_pen turtlesim/srv/SetPen  "{r: 255, g: 0, b: 0, width: 5, 'off': 0}"
#Draw letter "T"

pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 4.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: -1.5, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 3, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"

sleep 0.5 #delay added as next service was call before drawing was terminated


#Lift pen
ros2 service call /turtle1/set_pen turtlesim/srv/SetPen  "{'off': 1}"
#Set turtle to new coordinate
ros2 service call /turtle1/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 7, y: 3, theta: 0.0}"

#Set pen to blue
ros2 service call /turtle1/set_pen turtlesim/srv/SetPen  "{r: 0, g: 255, b: 0, width: 5, 'off': 0}"
#Draw letter "H"

pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 4.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: -2.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 2.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: -4.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
