; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-msg)


;//! \htmlinclude VehicleSet.msg.html

(cl:defclass <VehicleSet> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicles
    :reader vehicles
    :initarg :vehicles
    :type (cl:vector vehicle_msgs-msg:Vehicle)
   :initform (cl:make-array 0 :element-type 'vehicle_msgs-msg:Vehicle :initial-element (cl:make-instance 'vehicle_msgs-msg:Vehicle))))
)

(cl:defclass VehicleSet (<VehicleSet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleSet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleSet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-msg:<VehicleSet> is deprecated: use vehicle_msgs-msg:VehicleSet instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:header-val is deprecated.  Use vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicles-val :lambda-list '(m))
(cl:defmethod vehicles-val ((m <VehicleSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:vehicles-val is deprecated.  Use vehicle_msgs-msg:vehicles instead.")
  (vehicles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleSet>) ostream)
  "Serializes a message object of type '<VehicleSet>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vehicles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vehicles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleSet>) istream)
  "Deserializes a message object of type '<VehicleSet>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vehicles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vehicles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vehicle_msgs-msg:Vehicle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleSet>)))
  "Returns string type for a message object of type '<VehicleSet>"
  "vehicle_msgs/VehicleSet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleSet)))
  "Returns string type for a message object of type 'VehicleSet"
  "vehicle_msgs/VehicleSet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleSet>)))
  "Returns md5sum for a message object of type '<VehicleSet>"
  "f1264823d8a48c6c06f03fb0f6c7a518")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleSet)))
  "Returns md5sum for a message object of type 'VehicleSet"
  "f1264823d8a48c6c06f03fb0f6c7a518")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleSet>)))
  "Returns full string definition for message of type '<VehicleSet>"
  (cl:format cl:nil "Header header~%~%Vehicle[] vehicles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/Vehicle~%Header header~%std_msgs/Int32 id~%std_msgs/String subclass~%std_msgs/String type~%VehicleParam param~%State state~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: vehicle_msgs/VehicleParam~%# Kinematic~%float32 width~%float32 length~%float32 wheel_base~%float32 front_suspension~%float32 rear_suspension~%float32 max_steering_angle~%~%float32 d_cr # Length between rear axle to center of vehicle~%~%# Dynamic~%float32 max_longitudinal_acc~%float32 max_lateral_acc~%~%================================================================================~%MSG: vehicle_msgs/State~%Header header~%geometry_msgs/Point vec_position~%float64 angle~%float64 curvature~%float64 velocity~%float64 acceleration~%float64 steer~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleSet)))
  "Returns full string definition for message of type 'VehicleSet"
  (cl:format cl:nil "Header header~%~%Vehicle[] vehicles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/Vehicle~%Header header~%std_msgs/Int32 id~%std_msgs/String subclass~%std_msgs/String type~%VehicleParam param~%State state~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: vehicle_msgs/VehicleParam~%# Kinematic~%float32 width~%float32 length~%float32 wheel_base~%float32 front_suspension~%float32 rear_suspension~%float32 max_steering_angle~%~%float32 d_cr # Length between rear axle to center of vehicle~%~%# Dynamic~%float32 max_longitudinal_acc~%float32 max_lateral_acc~%~%================================================================================~%MSG: vehicle_msgs/State~%Header header~%geometry_msgs/Point vec_position~%float64 angle~%float64 curvature~%float64 velocity~%float64 acceleration~%float64 steer~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleSet>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vehicles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleSet>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleSet
    (cl:cons ':header (header msg))
    (cl:cons ':vehicles (vehicles msg))
))
