;; Auto-generated. Do not edit!


(when (boundp 'vehicle_msgs::State)
  (if (not (find-package "VEHICLE_MSGS"))
    (make-package "VEHICLE_MSGS"))
  (shadow 'State (find-package "VEHICLE_MSGS")))
(unless (find-package "VEHICLE_MSGS::STATE")
  (make-package "VEHICLE_MSGS::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vehicle_msgs::State
  :super ros::object
  :slots (_header _vec_position _angle _curvature _velocity _acceleration _steer ))

(defmethod vehicle_msgs::State
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vec_position __vec_position) (instance geometry_msgs::Point :init))
    ((:angle __angle) 0.0)
    ((:curvature __curvature) 0.0)
    ((:velocity __velocity) 0.0)
    ((:acceleration __acceleration) 0.0)
    ((:steer __steer) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _vec_position __vec_position)
   (setq _angle (float __angle))
   (setq _curvature (float __curvature))
   (setq _velocity (float __velocity))
   (setq _acceleration (float __acceleration))
   (setq _steer (float __steer))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vec_position
   (&rest __vec_position)
   (if (keywordp (car __vec_position))
       (send* _vec_position __vec_position)
     (progn
       (if __vec_position (setq _vec_position (car __vec_position)))
       _vec_position)))
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _vec_position
    (send _vec_position :serialization-length)
    ;; float64 _angle
    8
    ;; float64 _curvature
    8
    ;; float64 _velocity
    8
    ;; float64 _acceleration
    8
    ;; float64 _steer
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _vec_position
       (send _vec_position :serialize s)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _vec_position
     (send _vec_position :deserialize buf ptr-) (incf ptr- (send _vec_position :serialization-length))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _curvature
     (setq _curvature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer
     (setq _steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get vehicle_msgs::State :md5sum-) "5996f819702fbdc617ef5bcadf1785ea")
(setf (get vehicle_msgs::State :datatype-) "vehicle_msgs/State")
(setf (get vehicle_msgs::State :definition-)
      "Header header
geometry_msgs/Point vec_position
float64 angle
float64 curvature
float64 velocity
float64 acceleration
float64 steer
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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :vehicle_msgs/State "5996f819702fbdc617ef5bcadf1785ea")


