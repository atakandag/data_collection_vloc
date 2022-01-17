#!/bin/bash
#export left images
roslaunch ./launch/export_right.launch bag_file:=$2
#move the images to the folder
mv ~/.ros/frame*.jpg $1
