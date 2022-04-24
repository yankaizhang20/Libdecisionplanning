;; Auto-generated. Do not edit!


(when (boundp 'vehicle_msgs::ArenaInfoStatic)
  (if (not (find-package "VEHICLE_MSGS"))
    (make-package "VEHICLE_MSGS"))
  (shadow 'ArenaInfoStatic (find-package "VEHICLE_MSGS")))
(unless (find-package "VEHICLE_MSGS::ARENAINFOSTATIC")
  (make-package "VEHICLE_MSGS::ARENAINFOSTATIC"))

(in-package "ROS")
;;//! \htmlinclude ArenaInfoStatic.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vehicle_msgs::ArenaInfoStatic
  :super ros::object
  :slots (_header _lane_net _obstacle_set ))

(defmethod vehicle_msgs::ArenaInfoStatic
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lane_net __lane_net) (instance vehicle_msgs::LaneNet :init))
    ((:obstacle_set __obstacle_set) (instance vehicle_msgs::ObstacleSet :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lane_net __lane_net)
   (setq _obstacle_set __obstacle_set)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lane_net
   (&rest __lane_net)
   (if (keywordp (car __lane_net))
       (send* _lane_net __lane_net)
     (progn
       (if __lane_net (setq _lane_net (car __lane_net)))
       _lane_net)))
  (:obstacle_set
   (&rest __obstacle_set)
   (if (keywordp (car __obstacle_set))
       (send* _obstacle_set __obstacle_set)
     (progn
       (if __obstacle_set (setq _obstacle_set (car __obstacle_set)))
       _obstacle_set)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; vehicle_msgs/LaneNet _lane_net
    (send _lane_net :serialization-length)
    ;; vehicle_msgs/ObstacleSet _obstacle_set
    (send _obstacle_set :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; vehicle_msgs/LaneNet _lane_net
       (send _lane_net :serialize s)
     ;; vehicle_msgs/ObstacleSet _obstacle_set
       (send _obstacle_set :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; vehicle_msgs/LaneNet _lane_net
     (send _lane_net :deserialize buf ptr-) (incf ptr- (send _lane_net :serialization-length))
   ;; vehicle_msgs/ObstacleSet _obstacle_set
     (send _obstacle_set :deserialize buf ptr-) (incf ptr- (send _obstacle_set :serialization-length))
   ;;
   self)
  )

(setf (get vehicle_msgs::ArenaInfoStatic :md5sum-) "3fbfe50680ba43ac51b0d50c5fcfc8d8")
(setf (get vehicle_msgs::ArenaInfoStatic :datatype-) "vehicle_msgs/ArenaInfoStatic")
(setf (get vehicle_msgs::ArenaInfoStatic :definition-)
      "Header header

LaneNet     lane_net
ObstacleSet obstacle_set


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
MSG: vehicle_msgs/LaneNet
Header header

Lane[] lanes

================================================================================
MSG: vehicle_msgs/Lane
Header header

int32 id
int32 dir

int32[] child_id
int32[] father_id

int32 l_lane_id
bool l_change_avbl

int32 r_lane_id
bool r_change_avbl

string behavior

float32 length

geometry_msgs/Point start_point
geometry_msgs/Point final_point

geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: vehicle_msgs/ObstacleSet
Header header

CircleObstacle[] obs_circle
PolygonObstacle[] obs_polygon

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



(provide :vehicle_msgs/ArenaInfoStatic "3fbfe50680ba43ac51b0d50c5fcfc8d8")


