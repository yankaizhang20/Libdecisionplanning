; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-msg)


;//! \htmlinclude ControlSignal.msg.html

(cl:defclass <ControlSignal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (acc
    :reader acc
    :initarg :acc
    :type cl:float
    :initform 0.0)
   (steer_rate
    :reader steer_rate
    :initarg :steer_rate
    :type cl:float
    :initform 0.0)
   (is_openloop
    :reader is_openloop
    :initarg :is_openloop
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (state
    :reader state
    :initarg :state
    :type vehicle_msgs-msg:State
    :initform (cl:make-instance 'vehicle_msgs-msg:State)))
)

(cl:defclass ControlSignal (<ControlSignal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlSignal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlSignal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-msg:<ControlSignal> is deprecated: use vehicle_msgs-msg:ControlSignal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControlSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:header-val is deprecated.  Use vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <ControlSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:acc-val is deprecated.  Use vehicle_msgs-msg:acc instead.")
  (acc m))

(cl:ensure-generic-function 'steer_rate-val :lambda-list '(m))
(cl:defmethod steer_rate-val ((m <ControlSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:steer_rate-val is deprecated.  Use vehicle_msgs-msg:steer_rate instead.")
  (steer_rate m))

(cl:ensure-generic-function 'is_openloop-val :lambda-list '(m))
(cl:defmethod is_openloop-val ((m <ControlSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:is_openloop-val is deprecated.  Use vehicle_msgs-msg:is_openloop instead.")
  (is_openloop m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ControlSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:state-val is deprecated.  Use vehicle_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlSignal>) ostream)
  "Serializes a message object of type '<ControlSignal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'is_openloop) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlSignal>) istream)
  "Deserializes a message object of type '<ControlSignal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer_rate) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'is_openloop) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlSignal>)))
  "Returns string type for a message object of type '<ControlSignal>"
  "vehicle_msgs/ControlSignal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlSignal)))
  "Returns string type for a message object of type 'ControlSignal"
  "vehicle_msgs/ControlSignal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlSignal>)))
  "Returns md5sum for a message object of type '<ControlSignal>"
  "8714632b2f2dd9804baa230415c4a66e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlSignal)))
  "Returns md5sum for a message object of type 'ControlSignal"
  "8714632b2f2dd9804baa230415c4a66e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlSignal>)))
  "Returns full string definition for message of type '<ControlSignal>"
  (cl:format cl:nil "Header header~%float64 acc~%float64 steer_rate~%~%# if open_loop is set, use the state as desired state ~%# and omit the control loop~%std_msgs/Bool is_openloop~%State state~%~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: vehicle_msgs/State~%Header header~%geometry_msgs/Point vec_position~%float64 angle~%float64 curvature~%float64 velocity~%float64 acceleration~%float64 steer~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlSignal)))
  "Returns full string definition for message of type 'ControlSignal"
  (cl:format cl:nil "Header header~%float64 acc~%float64 steer_rate~%~%# if open_loop is set, use the state as desired state ~%# and omit the control loop~%std_msgs/Bool is_openloop~%State state~%~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: vehicle_msgs/State~%Header header~%geometry_msgs/Point vec_position~%float64 angle~%float64 curvature~%float64 velocity~%float64 acceleration~%float64 steer~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlSignal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'is_openloop))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlSignal>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlSignal
    (cl:cons ':header (header msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':steer_rate (steer_rate msg))
    (cl:cons ':is_openloop (is_openloop msg))
    (cl:cons ':state (state msg))
))
