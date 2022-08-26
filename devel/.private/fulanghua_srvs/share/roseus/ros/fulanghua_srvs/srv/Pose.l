;; Auto-generated. Do not edit!


(when (boundp 'fulanghua_srvs::Pose)
  (if (not (find-package "FULANGHUA_SRVS"))
    (make-package "FULANGHUA_SRVS"))
  (shadow 'Pose (find-package "FULANGHUA_SRVS")))
(unless (find-package "FULANGHUA_SRVS::POSE")
  (make-package "FULANGHUA_SRVS::POSE"))
(unless (find-package "FULANGHUA_SRVS::POSEREQUEST")
  (make-package "FULANGHUA_SRVS::POSEREQUEST"))
(unless (find-package "FULANGHUA_SRVS::POSERESPONSE")
  (make-package "FULANGHUA_SRVS::POSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass fulanghua_srvs::PoseRequest
  :super ros::object
  :slots (_pose ))

(defmethod fulanghua_srvs::PoseRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass fulanghua_srvs::PoseResponse
  :super ros::object
  :slots (_status ))

(defmethod fulanghua_srvs::PoseResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass fulanghua_srvs::Pose
  :super ros::object
  :slots ())

(setf (get fulanghua_srvs::Pose :md5sum-) "2c06c39bfac810268e3bcf68619273a5")
(setf (get fulanghua_srvs::Pose :datatype-) "fulanghua_srvs/Pose")
(setf (get fulanghua_srvs::Pose :request) fulanghua_srvs::PoseRequest)
(setf (get fulanghua_srvs::Pose :response) fulanghua_srvs::PoseResponse)

(defmethod fulanghua_srvs::PoseRequest
  (:response () (instance fulanghua_srvs::PoseResponse :init)))

(setf (get fulanghua_srvs::PoseRequest :md5sum-) "2c06c39bfac810268e3bcf68619273a5")
(setf (get fulanghua_srvs::PoseRequest :datatype-) "fulanghua_srvs/PoseRequest")
(setf (get fulanghua_srvs::PoseRequest :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool status

")

(setf (get fulanghua_srvs::PoseResponse :md5sum-) "2c06c39bfac810268e3bcf68619273a5")
(setf (get fulanghua_srvs::PoseResponse :datatype-) "fulanghua_srvs/PoseResponse")
(setf (get fulanghua_srvs::PoseResponse :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool status

")



(provide :fulanghua_srvs/Pose "2c06c39bfac810268e3bcf68619273a5")


