;; Auto-generated. Do not edit!


(when (boundp 'vehicle_msgs::Vehicle)
  (if (not (find-package "VEHICLE_MSGS"))
    (make-package "VEHICLE_MSGS"))
  (shadow 'Vehicle (find-package "VEHICLE_MSGS")))
(unless (find-package "VEHICLE_MSGS::VEHICLE")
  (make-package "VEHICLE_MSGS::VEHICLE"))

(in-package "ROS")
;;//! \htmlinclude Vehicle.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vehicle_msgs::Vehicle
  :super ros::object
  :slots (_header _id _subclass _type _param _state ))

(defmethod vehicle_msgs::Vehicle
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) (instance std_msgs::Int32 :init))
    ((:subclass __subclass) (instance std_msgs::String :init))
    ((:type __type) (instance std_msgs::String :init))
    ((:param __param) (instance vehicle_msgs::VehicleParam :init))
    ((:state __state) (instance vehicle_msgs::State :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id __id)
   (setq _subclass __subclass)
   (setq _type __type)
   (setq _param __param)
   (setq _state __state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:subclass
   (&rest __subclass)
   (if (keywordp (car __subclass))
       (send* _subclass __subclass)
     (progn
       (if __subclass (setq _subclass (car __subclass)))
       _subclass)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:param
   (&rest __param)
   (if (keywordp (car __param))
       (send* _param __param)
     (progn
       (if __param (setq _param (car __param)))
       _param)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Int32 _id
    (send _id :serialization-length)
    ;; std_msgs/String _subclass
    (send _subclass :serialization-length)
    ;; std_msgs/String _type
    (send _type :serialization-length)
    ;; vehicle_msgs/VehicleParam _param
    (send _param :serialization-length)
    ;; vehicle_msgs/State _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Int32 _id
       (send _id :serialize s)
     ;; std_msgs/String _subclass
       (send _subclass :serialize s)
     ;; std_msgs/String _type
       (send _type :serialize s)
     ;; vehicle_msgs/VehicleParam _param
       (send _param :serialize s)
     ;; vehicle_msgs/State _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Int32 _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; std_msgs/String _subclass
     (send _subclass :deserialize buf ptr-) (incf ptr- (send _subclass :serialization-length))
   ;; std_msgs/String _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; vehicle_msgs/VehicleParam _param
     (send _param :deserialize buf ptr-) (incf ptr- (send _param :serialization-length))
   ;; vehicle_msgs/State _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(setf (get vehicle_msgs::Vehicle :md5sum-) "0372a2fa6275905a037fbc1ca20c1ad6")
(setf (get vehicle_msgs::Vehicle :datatype-) "vehicle_msgs/Vehicle")
(setf (get vehicle_msgs::Vehicle :definition-)
      "Header header
std_msgs/Int32 id
std_msgs/String subclass
std_msgs/String type
VehicleParam param
State state

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



(provide :vehicle_msgs/Vehicle "0372a2fa6275905a037fbc1ca20c1ad6")


