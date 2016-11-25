; Auto-generated. Do not edit!


(cl:in-package kuka_node-srv)


;//! \htmlinclude SetTrajectory-request.msg.html

(cl:defclass <SetTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((new_trajectory
    :reader new_trajectory
    :initarg :new_trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory)))
)

(cl:defclass SetTrajectory-request (<SetTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kuka_node-srv:<SetTrajectory-request> is deprecated: use kuka_node-srv:SetTrajectory-request instead.")))

(cl:ensure-generic-function 'new_trajectory-val :lambda-list '(m))
(cl:defmethod new_trajectory-val ((m <SetTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kuka_node-srv:new_trajectory-val is deprecated.  Use kuka_node-srv:new_trajectory instead.")
  (new_trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTrajectory-request>) ostream)
  "Serializes a message object of type '<SetTrajectory-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'new_trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTrajectory-request>) istream)
  "Deserializes a message object of type '<SetTrajectory-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'new_trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTrajectory-request>)))
  "Returns string type for a service object of type '<SetTrajectory-request>"
  "kuka_node/SetTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTrajectory-request)))
  "Returns string type for a service object of type 'SetTrajectory-request"
  "kuka_node/SetTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTrajectory-request>)))
  "Returns md5sum for a message object of type '<SetTrajectory-request>"
  "1638531ed93ad03145d87fd812e8e49d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTrajectory-request)))
  "Returns md5sum for a message object of type 'SetTrajectory-request"
  "1638531ed93ad03145d87fd812e8e49d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTrajectory-request>)))
  "Returns full string definition for message of type '<SetTrajectory-request>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory new_trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTrajectory-request)))
  "Returns full string definition for message of type 'SetTrajectory-request"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory new_trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTrajectory-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'new_trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTrajectory-request
    (cl:cons ':new_trajectory (new_trajectory msg))
))
;//! \htmlinclude SetTrajectory-response.msg.html

(cl:defclass <SetTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass SetTrajectory-response (<SetTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kuka_node-srv:<SetTrajectory-response> is deprecated: use kuka_node-srv:SetTrajectory-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kuka_node-srv:success-val is deprecated.  Use kuka_node-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTrajectory-response>) ostream)
  "Serializes a message object of type '<SetTrajectory-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'success) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTrajectory-response>) istream)
  "Deserializes a message object of type '<SetTrajectory-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'success) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTrajectory-response>)))
  "Returns string type for a service object of type '<SetTrajectory-response>"
  "kuka_node/SetTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTrajectory-response)))
  "Returns string type for a service object of type 'SetTrajectory-response"
  "kuka_node/SetTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTrajectory-response>)))
  "Returns md5sum for a message object of type '<SetTrajectory-response>"
  "1638531ed93ad03145d87fd812e8e49d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTrajectory-response)))
  "Returns md5sum for a message object of type 'SetTrajectory-response"
  "1638531ed93ad03145d87fd812e8e49d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTrajectory-response>)))
  "Returns full string definition for message of type '<SetTrajectory-response>"
  (cl:format cl:nil "std_msgs/Bool success~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTrajectory-response)))
  "Returns full string definition for message of type 'SetTrajectory-response"
  (cl:format cl:nil "std_msgs/Bool success~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTrajectory-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'success))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTrajectory-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTrajectory)))
  'SetTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTrajectory)))
  'SetTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTrajectory)))
  "Returns string type for a service object of type '<SetTrajectory>"
  "kuka_node/SetTrajectory")