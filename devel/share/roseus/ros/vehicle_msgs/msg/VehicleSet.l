;; Auto-generated. Do not edit!


(when (boundp 'vehicle_msgs::VehicleSet)
  (if (not (find-package "VEHICLE_MSGS"))
    (make-package "VEHICLE_MSGS"))
  (shadow 'VehicleSet (find-package "VEHICLE_MSGS")))
(unless (find-package "VEHICLE_MSGS::VEHICLESET")
  (make-package "VEHICLE_MSGS::VEHICLESET"))

(in-package "ROS")
;;//! \htmlinclude VehicleSet.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vehicle_msgs::VehicleSet
  :super ros::object
  :slots (_header _vehicles ))

(defmethod vehicle_msgs::VehicleSet
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicles __vehicles) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicles __vehicles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehicles
   (&rest __vehicles)
   (if (keywordp (car __vehicles))
       (send* _vehicles __vehicles)
     (progn
       (if __vehicles (setq _vehicles (car __vehicles)))
       _vehicles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; vehicle_msgs/Vehicle[] _vehicles
    (apply #'+ (send-all _vehicles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; vehicle_msgs/Vehicle[] _vehicles
     (write-long (length _vehicles) s)
     (dolist (elem _vehicles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; vehicle_msgs/Vehicle[] _vehicles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vehicles (let (r) (dotimes (i n) (push (instance vehicle_msgs::Vehicle :init) r)) r))
     (dolist (elem- _vehicles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vehicle_msgs::VehicleSet :md5sum-) "f1264823d8a48c6c06f03fb0f6c7a518")
(setf (get vehicle_msgs::VehicleSet :datatype-) "vehicle_msgs/VehicleSet")
(setf (get vehicle_msgs::VehicleSet :definition-)
      "Header header

Vehicle[] vehicles

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



(provide :vehicle_msgs/VehicleSet "f1264823d8a48c6c06f03fb0f6c7a518")


