#!/bin/bash
gnome-terminal --tab --command="bash -c 'endyarnstart() { exec bash; }; trap endyarnstart INT; roslaunch zed_wrapper zed2.launch'"\
	       --tab --command="bash -c 'endyarnstart() { exec bash; }; trap endyarnstart INT; sleep 5; roslaunch ouster_ros ouster.launch sensor_hostname:=os1-991941001031.local udp_dest:=$1 lidar_mode:=2048x10 viz:=false timestamp_mode:=TIME_FROM_PTP_1588'" \
	       --tab --command="bash -c 'endyarnstart() { exec bash; }; trap endyarnstart INT; sleep 30; cd $PWD/bag_files; rosbag record /zed2/zed_node/left/image_rect_color /zed2/zed_node/left/camera_info /zed2/zed_node/right/camera_info /zed2/zed_node/right/image_rect_color /zed2/zed_node/imu/data /zed2/zed_node/imu/data_raw /os_cloud_node/points /os_cloud_node/imu'" 



