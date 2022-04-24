;; Auto-generated. Do not edit!


(when (boundp 'vehicle_msgs::ObstacleSet)
  (if (not (find-package "VEHICLE_MSGS"))
    (make-package "VEHICLE_MSGS"))
  (shadow 'ObstacleSet (find-package "VEHICLE_MSGS")))
(unless (find-package "VEHICLE_MSGS::OBSTACLESET")
  (make-package "VEHICLE_MSGS::OBSTACLESET"))

(in-package "ROS")
;;//! \htmlinclude ObstacleSet.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vehicle_msgs::ObstacleSet
  :super ros::object
  :slots (_header _obs_circle _obs_polygon ))

(defmethod vehicle_msgs::ObstacleSet
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:obs_circle __obs_circle) ())
    ((:obs_polygon __obs_polygon) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _obs_circle __obs_circle)
   (setq _obs_polygon __obs_polygon)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:obs_circle
   (&rest __obs_circle)
   (if (keywordp (car __obs_circle))
       (send* _obs_circle __obs_circle)
     (progn
       (if __obs_circle (setq _obs_circle (car __obs_circle)))
       _obs_circle)))
  (:obs_polygon
   (&rest __obs_polygon)
   (if (keywordp (car __obs_polygon))
       (send* _obs_polygon __obs_polygon)
     (progn
       (if __obs_polygon (setq _obs_polygon (car __obs_polygon)))
       _obs_polygon)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; vehicle_msgs/CircleObstacle[] _obs_circle
    (apply #'+ (send-all _obs_circle :serialization-length)) 4
    ;; vehicle_msgs/PolygonObstacle[] _obs_polygon
    (apply #'+ (send-all _obs_polygon :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; vehicle_msgs/CircleObstacle[] _obs_circle
     (write-long (length _obs_circle) s)
     (dolist (elem _obs_circle)
       (send elem :serialize s)
       )
     ;; vehicle_msgs/PolygonObstacle[] _obs_polygon
     (write-long (length _obs_polygon) s)
     (dolist (elem _obs_polygon)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; vehicle_msgs/CircleObstacle[] _obs_circle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obs_circle (let (r) (dotimes (i n) (push (instance vehicle_msgs::CircleObstacle :init) r)) r))
     (dolist (elem- _obs_circle)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; vehicle_msgs/PolygonObstacle[] _obs_polygon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obs_polygon (let (r) (dotimes (i n) (push (instance vehicle_msgs::PolygonObstacle :init) r)) r))
     (dolist (elem- _obs_polygon)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vehicle_msgs::ObstacleSet :md5sum-) "64fa1aba570dc974a6d7fcb2a16d7851")
(setf (get vehicle_msgs::ObstacleSet :datatype-) "vehicle_msgs/ObstacleSet")
(setf (get vehicle_msgs::ObstacleSet :definition-)
      "Header header

CircleObstacle[] obs_circle
PolygonObstacle[] obs_polygon

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
MSG: vehicle_msgs/CircleObstacle
Header header

int32 id
Circle circle

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

================================================================================
MSG: vehicle_msgs/PolygonObstacle
Header header

int32 id
geometry_msgs/Polygon polygon

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :vehicle_msgs/ObstacleSet "64fa1aba570dc974a6d7fcb2a16d7851")


