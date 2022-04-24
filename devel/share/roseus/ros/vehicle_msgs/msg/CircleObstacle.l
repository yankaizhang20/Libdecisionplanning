;; Auto-generated. Do not edit!


(when (boundp 'vehicle_msgs::CircleObstacle)
  (if (not (find-package "VEHICLE_MSGS"))
    (make-package "VEHICLE_MSGS"))
  (shadow 'CircleObstacle (find-package "VEHICLE_MSGS")))
(unless (find-package "VEHICLE_MSGS::CIRCLEOBSTACLE")
  (make-package "VEHICLE_MSGS::CIRCLEOBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude CircleObstacle.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vehicle_msgs::CircleObstacle
  :super ros::object
  :slots (_header _id _circle ))

(defmethod vehicle_msgs::CircleObstacle
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:circle __circle) (instance vehicle_msgs::Circle :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _circle __circle)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:circle
   (&rest __circle)
   (if (keywordp (car __circle))
       (send* _circle __circle)
     (progn
       (if __circle (setq _circle (car __circle)))
       _circle)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; vehicle_msgs/Circle _circle
    (send _circle :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; vehicle_msgs/Circle _circle
       (send _circle :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; vehicle_msgs/Circle _circle
     (send _circle :deserialize buf ptr-) (incf ptr- (send _circle :serialization-length))
   ;;
   self)
  )

(setf (get vehicle_msgs::CircleObstacle :md5sum-) "31dc893867f486c262045e463fa7c408")
(setf (get vehicle_msgs::CircleObstacle :datatype-) "vehicle_msgs/CircleObstacle")
(setf (get vehicle_msgs::CircleObstacle :definition-)
      "Header header

int32 id
Circle circle

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
MSG: vehicle_msgs/Circle
geometry_msgs/Point center
float32 radius

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :vehicle_msgs/CircleObstacle "31dc893867f486c262045e463fa7c408")


