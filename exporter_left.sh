#!/bin/bash
#export left images
roslaunch export_left.launch bag_file:=$2
#move the images to the folder
mv ~/.ros/frame*.jpg $1
