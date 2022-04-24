; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-msg)


;//! \htmlinclude CircleObstacle.msg.html

(cl:defclass <CircleObstacle> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (circle
    :reader circle
    :initarg :circle
    :type vehicle_msgs-msg:Circle
    :initform (cl:make-instance 'vehicle_msgs-msg:Circle)))
)

(cl:defclass CircleObstacle (<CircleObstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CircleObstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CircleObstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-msg:<CircleObstacle> is deprecated: use vehicle_msgs-msg:CircleObstacle instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CircleObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:header-val is deprecated.  Use vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CircleObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:id-val is deprecated.  Use vehicle_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'circle-val :lambda-list '(m))
(cl:defmethod circle-val ((m <CircleObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:circle-val is deprecated.  Use vehicle_msgs-msg:circle instead.")
  (circle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CircleObstacle>) ostream)
  "Serializes a message object of type '<CircleObstacle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'circle) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CircleObstacle>) istream)
  "Deserializes a message object of type '<CircleObstacle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'circle) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CircleObstacle>)))
  "Returns string type for a message object of type '<CircleObstacle>"
  "vehicle_msgs/CircleObstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CircleObstacle)))
  "Returns string type for a message object of type 'CircleObstacle"
  "vehicle_msgs/CircleObstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CircleObstacle>)))
  "Returns md5sum for a message object of type '<CircleObstacle>"
  "31dc893867f486c262045e463fa7c408")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CircleObstacle)))
  "Returns md5sum for a message object of type 'CircleObstacle"
  "31dc893867f486c262045e463fa7c408")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CircleObstacle>)))
  "Returns full string definition for message of type '<CircleObstacle>"
  (cl:format cl:nil "Header header~%~%int32 id~%Circle circle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/Circle~%geometry_msgs/Point center~%float32 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CircleObstacle)))
  "Returns full string definition for message of type 'CircleObstacle"
  (cl:format cl:nil "Header header~%~%int32 id~%Circle circle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/Circle~%geometry_msgs/Point center~%float32 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CircleObstacle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'circle))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CircleObstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'CircleObstacle
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':circle (circle msg))
))
