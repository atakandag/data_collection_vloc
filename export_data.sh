#!/bin/bash
mkdir Datasets/$1/points
mkdir Datasets/$1/images_left
mkdir Datasets/$1/images_right
rosrun pcl_ros bag_to_pcd $2 /os_cloud_node/points $PWD/Datasets/$1/points
./exporter_left.sh Datasets/$1/images_left bag_files/$2
#./exporter_right.sh Datasets/$1/images_right

