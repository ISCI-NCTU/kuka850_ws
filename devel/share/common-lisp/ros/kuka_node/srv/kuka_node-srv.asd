
(cl:in-package :asdf)

(defsystem "kuka_node-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
               :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "SetTrajectory" :depends-on ("_package_SetTrajectory"))
    (:file "_package_SetTrajectory" :depends-on ("_package"))
  ))