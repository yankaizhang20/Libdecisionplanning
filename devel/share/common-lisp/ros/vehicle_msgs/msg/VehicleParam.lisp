; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-msg)


;//! \htmlinclude VehicleParam.msg.html

(cl:defclass <VehicleParam> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (wheel_base
    :reader wheel_base
    :initarg :wheel_base
    :type cl:float
    :initform 0.0)
   (front_suspension
    :reader front_suspension
    :initarg :front_suspension
    :type cl:float
    :initform 0.0)
   (rear_suspension
    :reader rear_suspension
    :initarg :rear_suspension
    :type cl:float
    :initform 0.0)
   (max_steering_angle
    :reader max_steering_angle
    :initarg :max_steering_angle
    :type cl:float
    :initform 0.0)
   (d_cr
    :reader d_cr
    :initarg :d_cr
    :type cl:float
    :initform 0.0)
   (max_longitudinal_acc
    :reader max_longitudinal_acc
    :initarg :max_longitudinal_acc
    :type cl:float
    :initform 0.0)
   (max_lateral_acc
    :reader max_lateral_acc
    :initarg :max_lateral_acc
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleParam (<VehicleParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-msg:<VehicleParam> is deprecated: use vehicle_msgs-msg:VehicleParam instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <VehicleParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:width-val is deprecated.  Use vehicle_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <VehicleParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:length-val is deprecated.  Use vehicle_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'wheel_base-val :lambda-list '(m))
(cl:defmethod wheel_base-val ((m <VehicleParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:wheel_base-val is deprecated.  Use vehicle_msgs-msg:wheel_base instead.")
  (wheel_base m))

(cl:ensure-generic-function 'front_suspension-val :lambda-list '(m))
(cl:defmethod front_suspension-val ((m <VehicleParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:front_suspension-val is deprecated.  Use vehicle_msgs-msg:front_suspension instead.")
  (front_suspension m))

(cl:ensure-generic-function 'rear_suspension-val :lambda-list '(m))
(cl:defmethod rear_suspension-val ((m <VehicleParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:rear_suspension-val is deprecated.  Use vehicle_msgs-msg:rear_suspension instead.")
  (rear_suspension m))

(cl:ensure-generic-function 'max_steering_angle-val :lambda-list '(m))
(cl:defmethod max_steering_angle-val ((m <VehicleParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:max_steering_angle-val is deprecated.  Use vehicle_msgs-msg:max_steering_angle instead.")
  (max_steering_angle m))

(cl:ensure-generic-function 'd_cr-val :lambda-list '(m))
(cl:defmethod d_cr-val ((m <VehicleParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:d_cr-val is deprecated.  Use vehicle_msgs-msg:d_cr instead.")
  (d_cr m))

(cl:ensure-generic-function 'max_longitudinal_acc-val :lambda-list '(m))
(cl:defmethod max_longitudinal_acc-val ((m <VehicleParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:max_longitudinal_acc-val is deprecated.  Use vehicle_msgs-msg:max_longitudinal_acc instead.")
  (max_longitudinal_acc m))

(cl:ensure-generic-function 'max_lateral_acc-val :lambda-list '(m))
(cl:defmethod max_lateral_acc-val ((m <VehicleParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:max_lateral_acc-val is deprecated.  Use vehicle_msgs-msg:max_lateral_acc instead.")
  (max_lateral_acc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleParam>) ostream)
  "Serializes a message object of type '<VehicleParam>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_base))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_suspension))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_suspension))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_steering_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd_cr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_longitudinal_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_lateral_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleParam>) istream)
  "Deserializes a message object of type '<VehicleParam>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_base) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_suspension) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_suspension) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_steering_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd_cr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_longitudinal_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_lateral_acc) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleParam>)))
  "Returns string type for a message object of type '<VehicleParam>"
  "vehicle_msgs/VehicleParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleParam)))
  "Returns string type for a message object of type 'VehicleParam"
  "vehicle_msgs/VehicleParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleParam>)))
  "Returns md5sum for a message object of type '<VehicleParam>"
  "6ae2d3cebe7d183488a1456621a86eab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleParam)))
  "Returns md5sum for a message object of type 'VehicleParam"
  "6ae2d3cebe7d183488a1456621a86eab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleParam>)))
  "Returns full string definition for message of type '<VehicleParam>"
  (cl:format cl:nil "# Kinematic~%float32 width~%float32 length~%float32 wheel_base~%float32 front_suspension~%float32 rear_suspension~%float32 max_steering_angle~%~%float32 d_cr # Length between rear axle to center of vehicle~%~%# Dynamic~%float32 max_longitudinal_acc~%float32 max_lateral_acc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleParam)))
  "Returns full string definition for message of type 'VehicleParam"
  (cl:format cl:nil "# Kinematic~%float32 width~%float32 length~%float32 wheel_base~%float32 front_suspension~%float32 rear_suspension~%float32 max_steering_angle~%~%float32 d_cr # Length between rear axle to center of vehicle~%~%# Dynamic~%float32 max_longitudinal_acc~%float32 max_lateral_acc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleParam>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleParam>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleParam
    (cl:cons ':width (width msg))
    (cl:cons ':length (length msg))
    (cl:cons ':wheel_base (wheel_base msg))
    (cl:cons ':front_suspension (front_suspension msg))
    (cl:cons ':rear_suspension (rear_suspension msg))
    (cl:cons ':max_steering_angle (max_steering_angle msg))
    (cl:cons ':d_cr (d_cr msg))
    (cl:cons ':max_longitudinal_acc (max_longitudinal_acc msg))
    (cl:cons ':max_lateral_acc (max_lateral_acc msg))
))
