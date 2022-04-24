;; Auto-generated. Do not edit!


(when (boundp 'vehicle_msgs::Circle)
  (if (not (find-package "VEHICLE_MSGS"))
    (make-package "VEHICLE_MSGS"))
  (shadow 'Circle (find-package "VEHICLE_MSGS")))
(unless (find-package "VEHICLE_MSGS::CIRCLE")
  (make-package "VEHICLE_MSGS::CIRCLE"))

(in-package "ROS")
;;//! \htmlinclude Circle.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass vehicle_msgs::Circle
  :super ros::object
  :slots (_center _radius ))

(defmethod vehicle_msgs::Circle
  (:init
   (&key
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _center __center)
   (setq _radius (float __radius))
   self)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; float32 _radius
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vehicle_msgs::Circle :md5sum-) "0346e2adfa9eef61749f32871bb34611")
(setf (get vehicle_msgs::Circle :datatype-) "vehicle_msgs/Circle")
(setf (get vehicle_msgs::Circle :definition-)
      "geometry_msgs/Point center
float32 radius

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :vehicle_msgs/Circle "0346e2adfa9eef61749f32871bb34611")


