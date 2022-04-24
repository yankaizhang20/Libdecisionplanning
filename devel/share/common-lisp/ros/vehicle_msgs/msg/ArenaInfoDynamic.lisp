; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-msg)


;//! \htmlinclude ArenaInfoDynamic.msg.html

(cl:defclass <ArenaInfoDynamic> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicle_set
    :reader vehicle_set
    :initarg :vehicle_set
    :type vehicle_msgs-msg:VehicleSet
    :initform (cl:make-instance 'vehicle_msgs-msg:VehicleSet)))
)

(cl:defclass ArenaInfoDynamic (<ArenaInfoDynamic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArenaInfoDynamic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArenaInfoDynamic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-msg:<ArenaInfoDynamic> is deprecated: use vehicle_msgs-msg:ArenaInfoDynamic instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ArenaInfoDynamic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:header-val is deprecated.  Use vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicle_set-val :lambda-list '(m))
(cl:defmethod vehicle_set-val ((m <ArenaInfoDynamic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:vehicle_set-val is deprecated.  Use vehicle_msgs-msg:vehicle_set instead.")
  (vehicle_set m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArenaInfoDynamic>) ostream)
  "Serializes a message object of type '<ArenaInfoDynamic>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_set) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArenaInfoDynamic>) istream)
  "Deserializes a message object of type '<ArenaInfoDynamic>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_set) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArenaInfoDynamic>)))
  "Returns string type for a message object of type '<ArenaInfoDynamic>"
  "vehicle_msgs/ArenaInfoDynamic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArenaInfoDynamic)))
  "Returns string type for a message object of type 'ArenaInfoDynamic"
  "vehicle_msgs/ArenaInfoDynamic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArenaInfoDynamic>)))
  "Returns md5sum for a message object of type '<ArenaInfoDynamic>"
  "62d9bd9cf1ada8374b9687820f8ba4bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArenaInfoDynamic)))
  "Returns md5sum for a message object of type 'ArenaInfoDynamic"
  "62d9bd9cf1ada8374b9687820f8ba4bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArenaInfoDynamic>)))
  "Returns full string definition for message of type '<ArenaInfoDynamic>"
  (cl:format cl:nil "Header header~%~%VehicleSet  vehicle_set~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/VehicleSet~%Header header~%~%Vehicle[] vehicles~%~%================================================================================~%MSG: vehicle_msgs/Vehicle~%Header header~%std_msgs/Int32 id~%std_msgs/String subclass~%std_msgs/String type~%VehicleParam param~%State state~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: vehicle_msgs/VehicleParam~%# Kinematic~%float32 width~%float32 length~%float32 wheel_base~%float32 front_suspension~%float32 rear_suspension~%float32 max_steering_angle~%~%float32 d_cr # Length between rear axle to center of vehicle~%~%# Dynamic~%float32 max_longitudinal_acc~%float32 max_lateral_acc~%~%================================================================================~%MSG: vehicle_msgs/State~%Header header~%geometry_msgs/Point vec_position~%float64 angle~%float64 curvature~%float64 velocity~%float64 acceleration~%float64 steer~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArenaInfoDynamic)))
  "Returns full string definition for message of type 'ArenaInfoDynamic"
  (cl:format cl:nil "Header header~%~%VehicleSet  vehicle_set~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/VehicleSet~%Header header~%~%Vehicle[] vehicles~%~%================================================================================~%MSG: vehicle_msgs/Vehicle~%Header header~%std_msgs/Int32 id~%std_msgs/String subclass~%std_msgs/String type~%VehicleParam param~%State state~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: vehicle_msgs/VehicleParam~%# Kinematic~%float32 width~%float32 length~%float32 wheel_base~%float32 front_suspension~%float32 rear_suspension~%float32 max_steering_angle~%~%float32 d_cr # Length between rear axle to center of vehicle~%~%# Dynamic~%float32 max_longitudinal_acc~%float32 max_lateral_acc~%~%================================================================================~%MSG: vehicle_msgs/State~%Header header~%geometry_msgs/Point vec_position~%float64 angle~%float64 curvature~%float64 velocity~%float64 acceleration~%float64 steer~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArenaInfoDynamic>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_set))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArenaInfoDynamic>))
  "Converts a ROS message object to a list"
  (cl:list 'ArenaInfoDynamic
    (cl:cons ':header (header msg))
    (cl:cons ':vehicle_set (vehicle_set msg))
))
