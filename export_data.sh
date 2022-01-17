#!/bin/bash
#first argument is dataset name and second argument is bag file name
mkdir Datasets/$1
mkdir Datasets/$1/points
mkdir Datasets/$1/images_left
mkdir Datasets/$1/images_right
gnome-terminal --tab --command="bash -c 'endyarnstart() { exec bash; }; trap endyarnstart INT; roscore'"
sleep 5
rosrun pcl_ros bag_to_pcd $PWD/bag_files/$2 /os_cloud_node/points $PWD/Datasets/$1/points
./sh_files/exporter_left.sh $PWD/Datasets/$1/images_left $PWD/bag_files/$2
./sh_files/exporter_right.sh $PWD/Datasets/$1/images_right $PWD/bag_files/$2

