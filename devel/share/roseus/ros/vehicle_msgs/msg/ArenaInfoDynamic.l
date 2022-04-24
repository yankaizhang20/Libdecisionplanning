;; Auto-generated. Do not edit!


(when (boundp 'vehicle_msgs::ArenaInfoDynamic)
  (if (not (find-package "VEHICLE_MSGS"))
    (make-package "VEHICLE_MSGS"))
  (shadow 'ArenaInfoDynamic (find-package "VEHICLE_MSGS")))
(unless (find-package "VEHICLE_MSGS::ARENAINFODYNAMIC")
  (make-package "VEHICLE_MSGS::ARENAINFODYNAMIC"))

(in-package "ROS")
;;//! \htmlinclude ArenaInfoDynamic.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vehicle_msgs::ArenaInfoDynamic
  :super ros::object
  :slots (_header _vehicle_set ))

(defmethod vehicle_msgs::ArenaInfoDynamic
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicle_set __vehicle_set) (instance vehicle_msgs::VehicleSet :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicle_set __vehicle_set)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehicle_set
   (&rest __vehicle_set)
   (if (keywordp (car __vehicle_set))
       (send* _vehicle_set __vehicle_set)
     (progn
       (if __vehicle_set (setq _vehicle_set (car __vehicle_set)))
       _vehicle_set)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; vehicle_msgs/VehicleSet _vehicle_set
    (send _vehicle_set :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; vehicle_msgs/VehicleSet _vehicle_set
       (send _vehicle_set :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; vehicle_msgs/VehicleSet _vehicle_set
     (send _vehicle_set :deserialize buf ptr-) (incf ptr- (send _vehicle_set :serialization-length))
   ;;
   self)
  )

(setf (get vehicle_msgs::ArenaInfoDynamic :md5sum-) "62d9bd9cf1ada8374b9687820f8ba4bd")
(setf (get vehicle_msgs::ArenaInfoDynamic :datatype-) "vehicle_msgs/ArenaInfoDynamic")
(setf (get vehicle_msgs::ArenaInfoDynamic :definition-)
      "Header header

VehicleSet  vehicle_set

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
string frame_id

================================================================================
MSG: vehicle_msgs/VehicleSet
Header header

Vehicle[] vehicles

================================================================================
MSG: vehicle_msgs/Vehicle
Header header
std_msgs/Int32 id
std_msgs/String subclass
std_msgs/String type
VehicleParam param
State state

================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: vehicle_msgs/VehicleParam
# Kinematic
float32 width
float32 length
float32 wheel_base
float32 front_suspension
float32 rear_suspension
float32 max_steering_angle

float32 d_cr # Length between rear axle to center of vehicle

# Dynamic
float32 max_longitudinal_acc
float32 max_lateral_acc

================================================================================
MSG: vehicle_msgs/State
Header header
geometry_msgs/Point vec_position
float64 angle
float64 curvature
float64 velocity
float64 acceleration
float64 steer
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :vehicle_msgs/ArenaInfoDynamic "62d9bd9cf1ada8374b9687820f8ba4bd")


