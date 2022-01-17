# data_collection_vloc
Data Collection with Zed2 and Ouster LiDAR and 3D Reconstruction with Rtabmap for Visual Localization Applications

##Requirements

Zed2 SDK <https://www.stereolabs.com/developers/release/>
Ouster OS1 LiDAR <https://github.com/ouster-lidar/ouster_example>
RTAB-Map <http://introlab.github.io/rtabmap/>

##Let's get started

Plug in the LiDAR so that ethernet cable is connected to the PC and the LiDAR has power. Also, connect ZED2 camera to PC.

##Synchronizing LiDAR with PC

This is needed if you want your timestamps of point clouds obtained from LiDAR to be synchronized with the recording PC clock. 
From the network settings, change IPv4 method to Link-Local Only. Run the following to start synchronization.
```bash
./start_sync.sh
```
Wait until the synchronization done (until seeing "assuming ground role" log).

##Collect the data

Run the following command to collect the data. To learn the udp_dest_ip adress, run ifconfig command and check the inet adress of enp2s0f1. Also, remember to check your sensor_hostname is correct in the file [collect_data.sh](https://github.com/atakandag/data_collection_vloc/blob/main/collect_data.sh)
```bash
./collect_data.sh <udp_dest_ip>
```
After collecting the data remember to ctrl-c at the tab of rosbag record first! Otherwise your bag file may continue recording despite closing one of the sources. Then you can close the other tabs.

##Export the data

This is needed if you want to export your image and point cloud files. You can name the datasetFolderName as you want. The extractions will be done inside this folder. You can check your latest recorded bagfileName inside bag_files folder. You can even change the name.
```bash
./export_data.sh <datasetFolderName> <bagfileName>
```
Wait until all extractions completed. Now you can use your dataset.

##Using RTAB-Map for 3D Reconstruction of the collected dataset

Coming Soon..
