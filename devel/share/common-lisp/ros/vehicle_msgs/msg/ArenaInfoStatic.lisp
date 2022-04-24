; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-msg)


;//! \htmlinclude ArenaInfoStatic.msg.html

(cl:defclass <ArenaInfoStatic> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lane_net
    :reader lane_net
    :initarg :lane_net
    :type vehicle_msgs-msg:LaneNet
    :initform (cl:make-instance 'vehicle_msgs-msg:LaneNet))
   (obstacle_set
    :reader obstacle_set
    :initarg :obstacle_set
    :type vehicle_msgs-msg:ObstacleSet
    :initform (cl:make-instance 'vehicle_msgs-msg:ObstacleSet)))
)

(cl:defclass ArenaInfoStatic (<ArenaInfoStatic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArenaInfoStatic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArenaInfoStatic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-msg:<ArenaInfoStatic> is deprecated: use vehicle_msgs-msg:ArenaInfoStatic instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ArenaInfoStatic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:header-val is deprecated.  Use vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lane_net-val :lambda-list '(m))
(cl:defmethod lane_net-val ((m <ArenaInfoStatic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:lane_net-val is deprecated.  Use vehicle_msgs-msg:lane_net instead.")
  (lane_net m))

(cl:ensure-generic-function 'obstacle_set-val :lambda-list '(m))
(cl:defmethod obstacle_set-val ((m <ArenaInfoStatic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:obstacle_set-val is deprecated.  Use vehicle_msgs-msg:obstacle_set instead.")
  (obstacle_set m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArenaInfoStatic>) ostream)
  "Serializes a message object of type '<ArenaInfoStatic>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_net) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle_set) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArenaInfoStatic>) istream)
  "Deserializes a message object of type '<ArenaInfoStatic>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_net) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle_set) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArenaInfoStatic>)))
  "Returns string type for a message object of type '<ArenaInfoStatic>"
  "vehicle_msgs/ArenaInfoStatic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArenaInfoStatic)))
  "Returns string type for a message object of type 'ArenaInfoStatic"
  "vehicle_msgs/ArenaInfoStatic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArenaInfoStatic>)))
  "Returns md5sum for a message object of type '<ArenaInfoStatic>"
  "3fbfe50680ba43ac51b0d50c5fcfc8d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArenaInfoStatic)))
  "Returns md5sum for a message object of type 'ArenaInfoStatic"
  "3fbfe50680ba43ac51b0d50c5fcfc8d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArenaInfoStatic>)))
  "Returns full string definition for message of type '<ArenaInfoStatic>"
  (cl:format cl:nil "Header header~%~%LaneNet     lane_net~%ObstacleSet obstacle_set~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/LaneNet~%Header header~%~%Lane[] lanes~%~%================================================================================~%MSG: vehicle_msgs/Lane~%Header header~%~%int32 id~%int32 dir~%~%int32[] child_id~%int32[] father_id~%~%int32 l_lane_id~%bool l_change_avbl~%~%int32 r_lane_id~%bool r_change_avbl~%~%string behavior~%~%float32 length~%~%geometry_msgs/Point start_point~%geometry_msgs/Point final_point~%~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: vehicle_msgs/ObstacleSet~%Header header~%~%CircleObstacle[] obs_circle~%PolygonObstacle[] obs_polygon~%~%================================================================================~%MSG: vehicle_msgs/CircleObstacle~%Header header~%~%int32 id~%Circle circle~%~%================================================================================~%MSG: vehicle_msgs/Circle~%geometry_msgs/Point center~%float32 radius~%~%================================================================================~%MSG: vehicle_msgs/PolygonObstacle~%Header header~%~%int32 id~%geometry_msgs/Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArenaInfoStatic)))
  "Returns full string definition for message of type 'ArenaInfoStatic"
  (cl:format cl:nil "Header header~%~%LaneNet     lane_net~%ObstacleSet obstacle_set~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/LaneNet~%Header header~%~%Lane[] lanes~%~%================================================================================~%MSG: vehicle_msgs/Lane~%Header header~%~%int32 id~%int32 dir~%~%int32[] child_id~%int32[] father_id~%~%int32 l_lane_id~%bool l_change_avbl~%~%int32 r_lane_id~%bool r_change_avbl~%~%string behavior~%~%float32 length~%~%geometry_msgs/Point start_point~%geometry_msgs/Point final_point~%~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: vehicle_msgs/ObstacleSet~%Header header~%~%CircleObstacle[] obs_circle~%PolygonObstacle[] obs_polygon~%~%================================================================================~%MSG: vehicle_msgs/CircleObstacle~%Header header~%~%int32 id~%Circle circle~%~%================================================================================~%MSG: vehicle_msgs/Circle~%geometry_msgs/Point center~%float32 radius~%~%================================================================================~%MSG: vehicle_msgs/PolygonObstacle~%Header header~%~%int32 id~%geometry_msgs/Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArenaInfoStatic>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_net))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle_set))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArenaInfoStatic>))
  "Converts a ROS message object to a list"
  (cl:list 'ArenaInfoStatic
    (cl:cons ':header (header msg))
    (cl:cons ':lane_net (lane_net msg))
    (cl:cons ':obstacle_set (obstacle_set msg))
))
