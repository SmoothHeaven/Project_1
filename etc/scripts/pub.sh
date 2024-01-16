#!/usr/bin/bash

pub () {
    #arg with order of input
    local opt="$1"
    local topic_name="$2"
    local msg_type="$3"
    local msg="$4"
    #function message
    echo "Publishing message to ROS2 topic: $topic_name"
    #ros2 publisher command
    ros2 topic pub $opt $topic_name $msg_type "$msg"
}
