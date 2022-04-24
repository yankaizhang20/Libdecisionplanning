;; Auto-generated. Do not edit!


(when (boundp 'vehicle_msgs::Lane)
  (if (not (find-package "VEHICLE_MSGS"))
    (make-package "VEHICLE_MSGS"))
  (shadow 'Lane (find-package "VEHICLE_MSGS")))
(unless (find-package "VEHICLE_MSGS::LANE")
  (make-package "VEHICLE_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude Lane.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vehicle_msgs::Lane
  :super ros::object
  :slots (_header _id _dir _child_id _father_id _l_lane_id _l_change_avbl _r_lane_id _r_change_avbl _behavior _length _start_point _final_point _points ))

(defmethod vehicle_msgs::Lane
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:dir __dir) 0)
    ((:child_id __child_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:father_id __father_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:l_lane_id __l_lane_id) 0)
    ((:l_change_avbl __l_change_avbl) nil)
    ((:r_lane_id __r_lane_id) 0)
    ((:r_change_avbl __r_change_avbl) nil)
    ((:behavior __behavior) "")
    ((:length __length) 0.0)
    ((:start_point __start_point) (instance geometry_msgs::Point :init))
    ((:final_point __final_point) (instance geometry_msgs::Point :init))
    ((:points __points) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _dir (round __dir))
   (setq _child_id __child_id)
   (setq _father_id __father_id)
   (setq _l_lane_id (round __l_lane_id))
   (setq _l_change_avbl __l_change_avbl)
   (setq _r_lane_id (round __r_lane_id))
   (setq _r_change_avbl __r_change_avbl)
   (setq _behavior (string __behavior))
   (setq _length (float __length))
   (setq _start_point __start_point)
   (setq _final_point __final_point)
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:child_id
   (&optional __child_id)
   (if __child_id (setq _child_id __child_id)) _child_id)
  (:father_id
   (&optional __father_id)
   (if __father_id (setq _father_id __father_id)) _father_id)
  (:l_lane_id
   (&optional __l_lane_id)
   (if __l_lane_id (setq _l_lane_id __l_lane_id)) _l_lane_id)
  (:l_change_avbl
   (&optional (__l_change_avbl :null))
   (if (not (eq __l_change_avbl :null)) (setq _l_change_avbl __l_change_avbl)) _l_change_avbl)
  (:r_lane_id
   (&optional __r_lane_id)
   (if __r_lane_id (setq _r_lane_id __r_lane_id)) _r_lane_id)
  (:r_change_avbl
   (&optional (__r_change_avbl :null))
   (if (not (eq __r_change_avbl :null)) (setq _r_change_avbl __r_change_avbl)) _r_change_avbl)
  (:behavior
   (&optional __behavior)
   (if __behavior (setq _behavior __behavior)) _behavior)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:start_point
   (&rest __start_point)
   (if (keywordp (car __start_point))
       (send* _start_point __start_point)
     (progn
       (if __start_point (setq _start_point (car __start_point)))
       _start_point)))
  (:final_point
   (&rest __final_point)
   (if (keywordp (car __final_point))
       (send* _final_point __final_point)
     (progn
       (if __final_point (setq _final_point (car __final_point)))
       _final_point)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; int32 _dir
    4
    ;; int32[] _child_id
    (* 4    (length _child_id)) 4
    ;; int32[] _father_id
    (* 4    (length _father_id)) 4
    ;; int32 _l_lane_id
    4
    ;; bool _l_change_avbl
    1
    ;; int32 _r_lane_id
    4
    ;; bool _r_change_avbl
    1
    ;; string _behavior
    4 (length _behavior)
    ;; float32 _length
    4
    ;; geometry_msgs/Point _start_point
    (send _start_point :serialization-length)
    ;; geometry_msgs/Point _final_point
    (send _final_point :serialization-length)
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; int32 _dir
       (write-long _dir s)
     ;; int32[] _child_id
     (write-long (length _child_id) s)
     (dotimes (i (length _child_id))
       (write-long (elt _child_id i) s)
       )
     ;; int32[] _father_id
     (write-long (length _father_id) s)
     (dotimes (i (length _father_id))
       (write-long (elt _father_id i) s)
       )
     ;; int32 _l_lane_id
       (write-long _l_lane_id s)
     ;; bool _l_change_avbl
       (if _l_change_avbl (write-byte -1 s) (write-byte 0 s))
     ;; int32 _r_lane_id
       (write-long _r_lane_id s)
     ;; bool _r_change_avbl
       (if _r_change_avbl (write-byte -1 s) (write-byte 0 s))
     ;; string _behavior
       (write-long (length _behavior) s) (princ _behavior s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point _start_point
       (send _start_point :serialize s)
     ;; geometry_msgs/Point _final_point
       (send _final_point :serialize s)
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dir
     (setq _dir (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _child_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _child_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _child_id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _father_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _father_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _father_id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _l_lane_id
     (setq _l_lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _l_change_avbl
     (setq _l_change_avbl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _r_lane_id
     (setq _r_lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _r_change_avbl
     (setq _r_change_avbl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _behavior
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _behavior (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point _start_point
     (send _start_point :deserialize buf ptr-) (incf ptr- (send _start_point :serialization-length))
   ;; geometry_msgs/Point _final_point
     (send _final_point :deserialize buf ptr-) (incf ptr- (send _final_point :serialization-length))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vehicle_msgs::Lane :md5sum-) "34fa6f4e572e18530e0aa845f18bc92d")
(setf (get vehicle_msgs::Lane :datatype-) "vehicle_msgs/Lane")
(setf (get vehicle_msgs::Lane :definition-)
      "Header header

int32 id
int32 dir

int32[] child_id
int32[] father_id

int32 l_lane_id
bool l_change_avbl

int32 r_lane_id
bool r_change_avbl

string behavior

float32 length

geometry_msgs/Point start_point
geometry_msgs/Point final_point

geometry_msgs/Point[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :vehicle_msgs/Lane "34fa6f4e572e18530e0aa845f18bc92d")


