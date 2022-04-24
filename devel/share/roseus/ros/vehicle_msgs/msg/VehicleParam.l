;; Auto-generated. Do not edit!


(when (boundp 'vehicle_msgs::VehicleParam)
  (if (not (find-package "VEHICLE_MSGS"))
    (make-package "VEHICLE_MSGS"))
  (shadow 'VehicleParam (find-package "VEHICLE_MSGS")))
(unless (find-package "VEHICLE_MSGS::VEHICLEPARAM")
  (make-package "VEHICLE_MSGS::VEHICLEPARAM"))

(in-package "ROS")
;;//! \htmlinclude VehicleParam.msg.html


(defclass vehicle_msgs::VehicleParam
  :super ros::object
  :slots (_width _length _wheel_base _front_suspension _rear_suspension _max_steering_angle _d_cr _max_longitudinal_acc _max_lateral_acc ))

(defmethod vehicle_msgs::VehicleParam
  (:init
   (&key
    ((:width __width) 0.0)
    ((:length __length) 0.0)
    ((:wheel_base __wheel_base) 0.0)
    ((:front_suspension __front_suspension) 0.0)
    ((:rear_suspension __rear_suspension) 0.0)
    ((:max_steering_angle __max_steering_angle) 0.0)
    ((:d_cr __d_cr) 0.0)
    ((:max_longitudinal_acc __max_longitudinal_acc) 0.0)
    ((:max_lateral_acc __max_lateral_acc) 0.0)
    )
   (send-super :init)
   (setq _width (float __width))
   (setq _length (float __length))
   (setq _wheel_base (float __wheel_base))
   (setq _front_suspension (float __front_suspension))
   (setq _rear_suspension (float __rear_suspension))
   (setq _max_steering_angle (float __max_steering_angle))
   (setq _d_cr (float __d_cr))
   (setq _max_longitudinal_acc (float __max_longitudinal_acc))
   (setq _max_lateral_acc (float __max_lateral_acc))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:wheel_base
   (&optional __wheel_base)
   (if __wheel_base (setq _wheel_base __wheel_base)) _wheel_base)
  (:front_suspension
   (&optional __front_suspension)
   (if __front_suspension (setq _front_suspension __front_suspension)) _front_suspension)
  (:rear_suspension
   (&optional __rear_suspension)
   (if __rear_suspension (setq _rear_suspension __rear_suspension)) _rear_suspension)
  (:max_steering_angle
   (&optional __max_steering_angle)
   (if __max_steering_angle (setq _max_steering_angle __max_steering_angle)) _max_steering_angle)
  (:d_cr
   (&optional __d_cr)
   (if __d_cr (setq _d_cr __d_cr)) _d_cr)
  (:max_longitudinal_acc
   (&optional __max_longitudinal_acc)
   (if __max_longitudinal_acc (setq _max_longitudinal_acc __max_longitudinal_acc)) _max_longitudinal_acc)
  (:max_lateral_acc
   (&optional __max_lateral_acc)
   (if __max_lateral_acc (setq _max_lateral_acc __max_lateral_acc)) _max_lateral_acc)
  (:serialization-length
   ()
   (+
    ;; float32 _width
    4
    ;; float32 _length
    4
    ;; float32 _wheel_base
    4
    ;; float32 _front_suspension
    4
    ;; float32 _rear_suspension
    4
    ;; float32 _max_steering_angle
    4
    ;; float32 _d_cr
    4
    ;; float32 _max_longitudinal_acc
    4
    ;; float32 _max_lateral_acc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_base
       (sys::poke _wheel_base (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_suspension
       (sys::poke _front_suspension (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_suspension
       (sys::poke _rear_suspension (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_steering_angle
       (sys::poke _max_steering_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d_cr
       (sys::poke _d_cr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_longitudinal_acc
       (sys::poke _max_longitudinal_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_lateral_acc
       (sys::poke _max_lateral_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_base
     (setq _wheel_base (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_suspension
     (setq _front_suspension (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_suspension
     (setq _rear_suspension (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_steering_angle
     (setq _max_steering_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d_cr
     (setq _d_cr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_longitudinal_acc
     (setq _max_longitudinal_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_lateral_acc
     (setq _max_lateral_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vehicle_msgs::VehicleParam :md5sum-) "6ae2d3cebe7d183488a1456621a86eab")
(setf (get vehicle_msgs::VehicleParam :datatype-) "vehicle_msgs/VehicleParam")
(setf (get vehicle_msgs::VehicleParam :definition-)
      "# Kinematic
float32 width
float32 length
float32 wheel_base
float32 front_suspension
float32 rear_suspension
float32 max_steering_angle

float32 d_cr # Length between rear axle to center of vehicle

# Dynamic
float32 max_longitudinal_acc
float32 max_lateral_acc

")



(provide :vehicle_msgs/VehicleParam "6ae2d3cebe7d183488a1456621a86eab")


