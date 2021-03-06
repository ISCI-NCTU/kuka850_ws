kuka
====

ROS driver for the Kuka R850 industrial arm. 

Migration from ROSBUID to CATKIN ROS indigo version  
original from : https://github.com/uobirlab/kuka  
Chris Burbridge   cburbridge@gmail.com

ROS indigo version  
Johnson  schwarmcyc@hotmail.com  Howard howardchen.ece04g@g2.nctu.edu.tw

git pages:https://yuehchuan.github.io/kuka850_ws/
 
This stack comprises of three packages:

kuka_node
---------

This is the main driver node. It provides a server that Kuka robot control box connects to using the Kuka XML protocol. 

Parameters:
kuka_description: The URDF of the Kuka arm. 

Subscriptions:
"/kuka/softstop": std_msgs/Bool - stops any active trajectory if anything is published on this topic.

Publishes:
"/kuka_state": sensor_msgs/JointState - The joint positions and currents. 

Services/Actions:
"/kuka/set_trajectory" : kuka_node/SetTrajectory - service that sets the queue of target joint positions. Provides no feedback as to the state of the trajectory.

"/kuka/execute_trajectory" : kuka_node/ExecuteTrajectory - action server that sets the target joint states to execute given trajectory and publishes feedback messages about the percentage completed. Can be preempted.

Both above trajectory methods work on trajectory_msgs/JointTrajectory messages. A trajectory of a single point results in the arm taking a straight line in joint space to that point, only the trajectory_msgs/JointTrajectoryPoint.points.positions[] is considered, velocity control is not implemented.

kuka_sim
--------
This node provides a simulation of the kuka arm communication. It connects to the kuka_node server and communicates in the same way as the real arm. Commanded positions are "simulated" with zero error.


kuka_launch
-----------
provides a single launch file "kuka.launch" that starts a kuka_node and a robot_state_publisher. Once launched, either the real Kuka arm can be started or the kuka_sim node. 


Build
---------
```
$git clone https://github.com/YuehChuan/kuka850_ws.git
$cd kuka850_ws
$source environment.sh
$catkin_make
```
After finishing build  
`$source environment.sh` again.

usage
---------
Open 2 terminals

Terminal 1  
```
$cd ~kuka850_ws
$source environment.sh
$sudo su
```
First,set root in order to get higher process priority   
command would send every 12ms to kuka KRC controller.   
`$roslaunch kuka_node kuka.launch`
to fire up server with ip localhost and port 6008

Terminal 2
```
$cd ~kuka850_ws
$source environment.sh
$rosrun kuka_sim CommsSim
```  
kuka_sim is the virtual kuka robot client for testing the connection.
