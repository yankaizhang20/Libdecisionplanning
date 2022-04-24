; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-msg)


;//! \htmlinclude ObstacleSet.msg.html

(cl:defclass <ObstacleSet> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (obs_circle
    :reader obs_circle
    :initarg :obs_circle
    :type (cl:vector vehicle_msgs-msg:CircleObstacle)
   :initform (cl:make-array 0 :element-type 'vehicle_msgs-msg:CircleObstacle :initial-element (cl:make-instance 'vehicle_msgs-msg:CircleObstacle)))
   (obs_polygon
    :reader obs_polygon
    :initarg :obs_polygon
    :type (cl:vector vehicle_msgs-msg:PolygonObstacle)
   :initform (cl:make-array 0 :element-type 'vehicle_msgs-msg:PolygonObstacle :initial-element (cl:make-instance 'vehicle_msgs-msg:PolygonObstacle))))
)

(cl:defclass ObstacleSet (<ObstacleSet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleSet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleSet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-msg:<ObstacleSet> is deprecated: use vehicle_msgs-msg:ObstacleSet instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObstacleSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:header-val is deprecated.  Use vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'obs_circle-val :lambda-list '(m))
(cl:defmethod obs_circle-val ((m <ObstacleSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:obs_circle-val is deprecated.  Use vehicle_msgs-msg:obs_circle instead.")
  (obs_circle m))

(cl:ensure-generic-function 'obs_polygon-val :lambda-list '(m))
(cl:defmethod obs_polygon-val ((m <ObstacleSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:obs_polygon-val is deprecated.  Use vehicle_msgs-msg:obs_polygon instead.")
  (obs_polygon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleSet>) ostream)
  "Serializes a message object of type '<ObstacleSet>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obs_circle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obs_circle))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obs_polygon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obs_polygon))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleSet>) istream)
  "Deserializes a message object of type '<ObstacleSet>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obs_circle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obs_circle)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vehicle_msgs-msg:CircleObstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obs_polygon) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obs_polygon)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vehicle_msgs-msg:PolygonObstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleSet>)))
  "Returns string type for a message object of type '<ObstacleSet>"
  "vehicle_msgs/ObstacleSet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleSet)))
  "Returns string type for a message object of type 'ObstacleSet"
  "vehicle_msgs/ObstacleSet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleSet>)))
  "Returns md5sum for a message object of type '<ObstacleSet>"
  "64fa1aba570dc974a6d7fcb2a16d7851")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleSet)))
  "Returns md5sum for a message object of type 'ObstacleSet"
  "64fa1aba570dc974a6d7fcb2a16d7851")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleSet>)))
  "Returns full string definition for message of type '<ObstacleSet>"
  (cl:format cl:nil "Header header~%~%CircleObstacle[] obs_circle~%PolygonObstacle[] obs_polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/CircleObstacle~%Header header~%~%int32 id~%Circle circle~%~%================================================================================~%MSG: vehicle_msgs/Circle~%geometry_msgs/Point center~%float32 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: vehicle_msgs/PolygonObstacle~%Header header~%~%int32 id~%geometry_msgs/Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleSet)))
  "Returns full string definition for message of type 'ObstacleSet"
  (cl:format cl:nil "Header header~%~%CircleObstacle[] obs_circle~%PolygonObstacle[] obs_polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/CircleObstacle~%Header header~%~%int32 id~%Circle circle~%~%================================================================================~%MSG: vehicle_msgs/Circle~%geometry_msgs/Point center~%float32 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: vehicle_msgs/PolygonObstacle~%Header header~%~%int32 id~%geometry_msgs/Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleSet>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obs_circle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obs_polygon) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleSet>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleSet
    (cl:cons ':header (header msg))
    (cl:cons ':obs_circle (obs_circle msg))
    (cl:cons ':obs_polygon (obs_polygon msg))
))
