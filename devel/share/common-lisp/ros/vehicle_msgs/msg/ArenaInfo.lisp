; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-msg)


;//! \htmlinclude ArenaInfo.msg.html

(cl:defclass <ArenaInfo> (roslisp-msg-protocol:ros-message)
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
    :initform (cl:make-instance 'vehicle_msgs-msg:ObstacleSet))
   (vehicle_set
    :reader vehicle_set
    :initarg :vehicle_set
    :type vehicle_msgs-msg:VehicleSet
    :initform (cl:make-instance 'vehicle_msgs-msg:VehicleSet)))
)

(cl:defclass ArenaInfo (<ArenaInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArenaInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArenaInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-msg:<ArenaInfo> is deprecated: use vehicle_msgs-msg:ArenaInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ArenaInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:header-val is deprecated.  Use vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lane_net-val :lambda-list '(m))
(cl:defmethod lane_net-val ((m <ArenaInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:lane_net-val is deprecated.  Use vehicle_msgs-msg:lane_net instead.")
  (lane_net m))

(cl:ensure-generic-function 'obstacle_set-val :lambda-list '(m))
(cl:defmethod obstacle_set-val ((m <ArenaInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:obstacle_set-val is deprecated.  Use vehicle_msgs-msg:obstacle_set instead.")
  (obstacle_set m))

(cl:ensure-generic-function 'vehicle_set-val :lambda-list '(m))
(cl:defmethod vehicle_set-val ((m <ArenaInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:vehicle_set-val is deprecated.  Use vehicle_msgs-msg:vehicle_set instead.")
  (vehicle_set m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArenaInfo>) ostream)
  "Serializes a message object of type '<ArenaInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_net) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle_set) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_set) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArenaInfo>) istream)
  "Deserializes a message object of type '<ArenaInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_net) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle_set) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_set) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArenaInfo>)))
  "Returns string type for a message object of type '<ArenaInfo>"
  "vehicle_msgs/ArenaInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArenaInfo)))
  "Returns string type for a message object of type 'ArenaInfo"
  "vehicle_msgs/ArenaInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArenaInfo>)))
  "Returns md5sum for a message object of type '<ArenaInfo>"
  "9211a6cea105001098b4c5848c383814")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArenaInfo)))
  "Returns md5sum for a message object of type 'ArenaInfo"
  "9211a6cea105001098b4c5848c383814")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArenaInfo>)))
  "Returns full string definition for message of type '<ArenaInfo>"
  (cl:format cl:nil "Header header~%~%LaneNet     lane_net~%ObstacleSet obstacle_set~%VehicleSet  vehicle_set~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/LaneNet~%Header header~%~%Lane[] lanes~%~%================================================================================~%MSG: vehicle_msgs/Lane~%Header header~%~%int32 id~%int32 dir~%~%int32[] child_id~%int32[] father_id~%~%int32 l_lane_id~%bool l_change_avbl~%~%int32 r_lane_id~%bool r_change_avbl~%~%string behavior~%~%float32 length~%~%geometry_msgs/Point start_point~%geometry_msgs/Point final_point~%~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: vehicle_msgs/ObstacleSet~%Header header~%~%CircleObstacle[] obs_circle~%PolygonObstacle[] obs_polygon~%~%================================================================================~%MSG: vehicle_msgs/CircleObstacle~%Header header~%~%int32 id~%Circle circle~%~%================================================================================~%MSG: vehicle_msgs/Circle~%geometry_msgs/Point center~%float32 radius~%~%================================================================================~%MSG: vehicle_msgs/PolygonObstacle~%Header header~%~%int32 id~%geometry_msgs/Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: vehicle_msgs/VehicleSet~%Header header~%~%Vehicle[] vehicles~%~%================================================================================~%MSG: vehicle_msgs/Vehicle~%Header header~%std_msgs/Int32 id~%std_msgs/String subclass~%std_msgs/String type~%VehicleParam param~%State state~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: vehicle_msgs/VehicleParam~%# Kinematic~%float32 width~%float32 length~%float32 wheel_base~%float32 front_suspension~%float32 rear_suspension~%float32 max_steering_angle~%~%float32 d_cr # Length between rear axle to center of vehicle~%~%# Dynamic~%float32 max_longitudinal_acc~%float32 max_lateral_acc~%~%================================================================================~%MSG: vehicle_msgs/State~%Header header~%geometry_msgs/Point vec_position~%float64 angle~%float64 curvature~%float64 velocity~%float64 acceleration~%float64 steer~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArenaInfo)))
  "Returns full string definition for message of type 'ArenaInfo"
  (cl:format cl:nil "Header header~%~%LaneNet     lane_net~%ObstacleSet obstacle_set~%VehicleSet  vehicle_set~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/LaneNet~%Header header~%~%Lane[] lanes~%~%================================================================================~%MSG: vehicle_msgs/Lane~%Header header~%~%int32 id~%int32 dir~%~%int32[] child_id~%int32[] father_id~%~%int32 l_lane_id~%bool l_change_avbl~%~%int32 r_lane_id~%bool r_change_avbl~%~%string behavior~%~%float32 length~%~%geometry_msgs/Point start_point~%geometry_msgs/Point final_point~%~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: vehicle_msgs/ObstacleSet~%Header header~%~%CircleObstacle[] obs_circle~%PolygonObstacle[] obs_polygon~%~%================================================================================~%MSG: vehicle_msgs/CircleObstacle~%Header header~%~%int32 id~%Circle circle~%~%================================================================================~%MSG: vehicle_msgs/Circle~%geometry_msgs/Point center~%float32 radius~%~%================================================================================~%MSG: vehicle_msgs/PolygonObstacle~%Header header~%~%int32 id~%geometry_msgs/Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: vehicle_msgs/VehicleSet~%Header header~%~%Vehicle[] vehicles~%~%================================================================================~%MSG: vehicle_msgs/Vehicle~%Header header~%std_msgs/Int32 id~%std_msgs/String subclass~%std_msgs/String type~%VehicleParam param~%State state~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: vehicle_msgs/VehicleParam~%# Kinematic~%float32 width~%float32 length~%float32 wheel_base~%float32 front_suspension~%float32 rear_suspension~%float32 max_steering_angle~%~%float32 d_cr # Length between rear axle to center of vehicle~%~%# Dynamic~%float32 max_longitudinal_acc~%float32 max_lateral_acc~%~%================================================================================~%MSG: vehicle_msgs/State~%Header header~%geometry_msgs/Point vec_position~%float64 angle~%float64 curvature~%float64 velocity~%float64 acceleration~%float64 steer~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArenaInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_net))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle_set))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_set))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArenaInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ArenaInfo
    (cl:cons ':header (header msg))
    (cl:cons ':lane_net (lane_net msg))
    (cl:cons ':obstacle_set (obstacle_set msg))
    (cl:cons ':vehicle_set (vehicle_set msg))
))
