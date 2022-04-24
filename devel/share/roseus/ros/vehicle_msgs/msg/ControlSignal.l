;; Auto-generated. Do not edit!


(when (boundp 'vehicle_msgs::ControlSignal)
  (if (not (find-package "VEHICLE_MSGS"))
    (make-package "VEHICLE_MSGS"))
  (shadow 'ControlSignal (find-package "VEHICLE_MSGS")))
(unless (find-package "VEHICLE_MSGS::CONTROLSIGNAL")
  (make-package "VEHICLE_MSGS::CONTROLSIGNAL"))

(in-package "ROS")
;;//! \htmlinclude ControlSignal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vehicle_msgs::ControlSignal
  :super ros::object
  :slots (_header _acc _steer_rate _is_openloop _state ))

(defmethod vehicle_msgs::ControlSignal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:acc __acc) 0.0)
    ((:steer_rate __steer_rate) 0.0)
    ((:is_openloop __is_openloop) (instance std_msgs::Bool :init))
    ((:state __state) (instance vehicle_msgs::State :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _acc (float __acc))
   (setq _steer_rate (float __steer_rate))
   (setq _is_openloop __is_openloop)
   (setq _state __state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:steer_rate
   (&optional __steer_rate)
   (if __steer_rate (setq _steer_rate __steer_rate)) _steer_rate)
  (:is_openloop
   (&rest __is_openloop)
   (if (keywordp (car __is_openloop))
       (send* _is_openloop __is_openloop)
     (progn
       (if __is_openloop (setq _is_openloop (car __is_openloop)))
       _is_openloop)))
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
    ;; float64 _acc
    8
    ;; float64 _steer_rate
    8
    ;; std_msgs/Bool _is_openloop
    (send _is_openloop :serialization-length)
    ;; vehicle_msgs/State _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steer_rate
       (sys::poke _steer_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; std_msgs/Bool _is_openloop
       (send _is_openloop :serialize s)
     ;; vehicle_msgs/State _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _acc
     (setq _acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer_rate
     (setq _steer_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; std_msgs/Bool _is_openloop
     (send _is_openloop :deserialize buf ptr-) (incf ptr- (send _is_openloop :serialization-length))
   ;; vehicle_msgs/State _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(setf (get vehicle_msgs::ControlSignal :md5sum-) "8714632b2f2dd9804baa230415c4a66e")
(setf (get vehicle_msgs::ControlSignal :datatype-) "vehicle_msgs/ControlSignal")
(setf (get vehicle_msgs::ControlSignal :definition-)
      "Header header
float64 acc
float64 steer_rate

# if open_loop is set, use the state as desired state 
# and omit the control loop
std_msgs/Bool is_openloop
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
MSG: std_msgs/Bool
bool data
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



(provide :vehicle_msgs/ControlSignal "8714632b2f2dd9804baa230415c4a66e")


