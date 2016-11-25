;; Auto-generated. Do not edit!


(when (boundp 'kuka_node::SetTrajectory)
  (if (not (find-package "KUKA_NODE"))
    (make-package "KUKA_NODE"))
  (shadow 'SetTrajectory (find-package "KUKA_NODE")))
(unless (find-package "KUKA_NODE::SETTRAJECTORY")
  (make-package "KUKA_NODE::SETTRAJECTORY"))
(unless (find-package "KUKA_NODE::SETTRAJECTORYREQUEST")
  (make-package "KUKA_NODE::SETTRAJECTORYREQUEST"))
(unless (find-package "KUKA_NODE::SETTRAJECTORYRESPONSE")
  (make-package "KUKA_NODE::SETTRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kuka_node::SetTrajectoryRequest
  :super ros::object
  :slots (_new_trajectory ))

(defmethod kuka_node::SetTrajectoryRequest
  (:init
   (&key
    ((:new_trajectory __new_trajectory) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _new_trajectory __new_trajectory)
   self)
  (:new_trajectory
   (&rest __new_trajectory)
   (if (keywordp (car __new_trajectory))
       (send* _new_trajectory __new_trajectory)
     (progn
       (if __new_trajectory (setq _new_trajectory (car __new_trajectory)))
       _new_trajectory)))
  (:serialization-length
   ()
   (+
    ;; trajectory_msgs/JointTrajectory _new_trajectory
    (send _new_trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trajectory_msgs/JointTrajectory _new_trajectory
       (send _new_trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trajectory_msgs/JointTrajectory _new_trajectory
     (send _new_trajectory :deserialize buf ptr-) (incf ptr- (send _new_trajectory :serialization-length))
   ;;
   self)
  )

(defclass kuka_node::SetTrajectoryResponse
  :super ros::object
  :slots (_success ))

(defmethod kuka_node::SetTrajectoryResponse
  (:init
   (&key
    ((:success __success) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&rest __success)
   (if (keywordp (car __success))
       (send* _success __success)
     (progn
       (if __success (setq _success (car __success)))
       _success)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _success
    (send _success :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _success
       (send _success :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _success
     (send _success :deserialize buf ptr-) (incf ptr- (send _success :serialization-length))
   ;;
   self)
  )

(defclass kuka_node::SetTrajectory
  :super ros::object
  :slots ())

(setf (get kuka_node::SetTrajectory :md5sum-) "1638531ed93ad03145d87fd812e8e49d")
(setf (get kuka_node::SetTrajectory :datatype-) "kuka_node/SetTrajectory")
(setf (get kuka_node::SetTrajectory :request) kuka_node::SetTrajectoryRequest)
(setf (get kuka_node::SetTrajectory :response) kuka_node::SetTrajectoryResponse)

(defmethod kuka_node::SetTrajectoryRequest
  (:response () (instance kuka_node::SetTrajectoryResponse :init)))

(setf (get kuka_node::SetTrajectoryRequest :md5sum-) "1638531ed93ad03145d87fd812e8e49d")
(setf (get kuka_node::SetTrajectoryRequest :datatype-) "kuka_node/SetTrajectoryRequest")
(setf (get kuka_node::SetTrajectoryRequest :definition-)
      "trajectory_msgs/JointTrajectory new_trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
std_msgs/Bool success

================================================================================
MSG: std_msgs/Bool
")

(setf (get kuka_node::SetTrajectoryResponse :md5sum-) "1638531ed93ad03145d87fd812e8e49d")
(setf (get kuka_node::SetTrajectoryResponse :datatype-) "kuka_node/SetTrajectoryResponse")
(setf (get kuka_node::SetTrajectoryResponse :definition-)
      "trajectory_msgs/JointTrajectory new_trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
std_msgs/Bool success

================================================================================
MSG: std_msgs/Bool
")



(provide :kuka_node/SetTrajectory "1638531ed93ad03145d87fd812e8e49d")


