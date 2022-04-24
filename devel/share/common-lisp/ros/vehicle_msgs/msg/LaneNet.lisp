; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-msg)


;//! \htmlinclude LaneNet.msg.html

(cl:defclass <LaneNet> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lanes
    :reader lanes
    :initarg :lanes
    :type (cl:vector vehicle_msgs-msg:Lane)
   :initform (cl:make-array 0 :element-type 'vehicle_msgs-msg:Lane :initial-element (cl:make-instance 'vehicle_msgs-msg:Lane))))
)

(cl:defclass LaneNet (<LaneNet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneNet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneNet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-msg:<LaneNet> is deprecated: use vehicle_msgs-msg:LaneNet instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaneNet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:header-val is deprecated.  Use vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <LaneNet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:lanes-val is deprecated.  Use vehicle_msgs-msg:lanes instead.")
  (lanes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneNet>) ostream)
  "Serializes a message object of type '<LaneNet>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneNet>) istream)
  "Deserializes a message object of type '<LaneNet>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vehicle_msgs-msg:Lane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneNet>)))
  "Returns string type for a message object of type '<LaneNet>"
  "vehicle_msgs/LaneNet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneNet)))
  "Returns string type for a message object of type 'LaneNet"
  "vehicle_msgs/LaneNet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneNet>)))
  "Returns md5sum for a message object of type '<LaneNet>"
  "4a734ebfa710ee42bc06c0cc48ba9964")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneNet)))
  "Returns md5sum for a message object of type 'LaneNet"
  "4a734ebfa710ee42bc06c0cc48ba9964")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneNet>)))
  "Returns full string definition for message of type '<LaneNet>"
  (cl:format cl:nil "Header header~%~%Lane[] lanes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/Lane~%Header header~%~%int32 id~%int32 dir~%~%int32[] child_id~%int32[] father_id~%~%int32 l_lane_id~%bool l_change_avbl~%~%int32 r_lane_id~%bool r_change_avbl~%~%string behavior~%~%float32 length~%~%geometry_msgs/Point start_point~%geometry_msgs/Point final_point~%~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneNet)))
  "Returns full string definition for message of type 'LaneNet"
  (cl:format cl:nil "Header header~%~%Lane[] lanes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vehicle_msgs/Lane~%Header header~%~%int32 id~%int32 dir~%~%int32[] child_id~%int32[] father_id~%~%int32 l_lane_id~%bool l_change_avbl~%~%int32 r_lane_id~%bool r_change_avbl~%~%string behavior~%~%float32 length~%~%geometry_msgs/Point start_point~%geometry_msgs/Point final_point~%~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneNet>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneNet>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneNet
    (cl:cons ':header (header msg))
    (cl:cons ':lanes (lanes msg))
))
