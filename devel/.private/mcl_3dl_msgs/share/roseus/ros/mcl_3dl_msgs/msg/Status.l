;; Auto-generated. Do not edit!


(when (boundp 'mcl_3dl_msgs::Status)
  (if (not (find-package "MCL_3DL_MSGS"))
    (make-package "MCL_3DL_MSGS"))
  (shadow 'Status (find-package "MCL_3DL_MSGS")))
(unless (find-package "MCL_3DL_MSGS::STATUS")
  (make-package "MCL_3DL_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NORMAL*" (find-package "MCL_3DL_MSGS::STATUS"))
(shadow '*NORMAL* (find-package "MCL_3DL_MSGS::STATUS"))
(defconstant mcl_3dl_msgs::Status::*NORMAL* 0)
(intern "*GLOBAL_LOCALIZATION*" (find-package "MCL_3DL_MSGS::STATUS"))
(shadow '*GLOBAL_LOCALIZATION* (find-package "MCL_3DL_MSGS::STATUS"))
(defconstant mcl_3dl_msgs::Status::*GLOBAL_LOCALIZATION* 1)
(intern "*EXPANSION_RESETTING*" (find-package "MCL_3DL_MSGS::STATUS"))
(shadow '*EXPANSION_RESETTING* (find-package "MCL_3DL_MSGS::STATUS"))
(defconstant mcl_3dl_msgs::Status::*EXPANSION_RESETTING* 2)
(intern "*ERROR_NORMAL*" (find-package "MCL_3DL_MSGS::STATUS"))
(shadow '*ERROR_NORMAL* (find-package "MCL_3DL_MSGS::STATUS"))
(defconstant mcl_3dl_msgs::Status::*ERROR_NORMAL* 0)
(intern "*ERROR_POINTS_NOT_FOUND*" (find-package "MCL_3DL_MSGS::STATUS"))
(shadow '*ERROR_POINTS_NOT_FOUND* (find-package "MCL_3DL_MSGS::STATUS"))
(defconstant mcl_3dl_msgs::Status::*ERROR_POINTS_NOT_FOUND* 1)
(intern "*CONVERGENCE_STATUS_NORMAL*" (find-package "MCL_3DL_MSGS::STATUS"))
(shadow '*CONVERGENCE_STATUS_NORMAL* (find-package "MCL_3DL_MSGS::STATUS"))
(defconstant mcl_3dl_msgs::Status::*CONVERGENCE_STATUS_NORMAL* 0)
(intern "*CONVERGENCE_STATUS_CONVERGED*" (find-package "MCL_3DL_MSGS::STATUS"))
(shadow '*CONVERGENCE_STATUS_CONVERGED* (find-package "MCL_3DL_MSGS::STATUS"))
(defconstant mcl_3dl_msgs::Status::*CONVERGENCE_STATUS_CONVERGED* 1)
(intern "*CONVERGENCE_STATUS_LARGE_STD_VALUE*" (find-package "MCL_3DL_MSGS::STATUS"))
(shadow '*CONVERGENCE_STATUS_LARGE_STD_VALUE* (find-package "MCL_3DL_MSGS::STATUS"))
(defconstant mcl_3dl_msgs::Status::*CONVERGENCE_STATUS_LARGE_STD_VALUE* 2)

(defun mcl_3dl_msgs::Status-to-symbol (const)
  (cond
        ((= const 0) 'mcl_3dl_msgs::Status::*NORMAL*)
        ((= const 1) 'mcl_3dl_msgs::Status::*GLOBAL_LOCALIZATION*)
        ((= const 2) 'mcl_3dl_msgs::Status::*EXPANSION_RESETTING*)
        ((= const 0) 'mcl_3dl_msgs::Status::*ERROR_NORMAL*)
        ((= const 1) 'mcl_3dl_msgs::Status::*ERROR_POINTS_NOT_FOUND*)
        ((= const 0) 'mcl_3dl_msgs::Status::*CONVERGENCE_STATUS_NORMAL*)
        ((= const 1) 'mcl_3dl_msgs::Status::*CONVERGENCE_STATUS_CONVERGED*)
        ((= const 2) 'mcl_3dl_msgs::Status::*CONVERGENCE_STATUS_LARGE_STD_VALUE*)
        (t nil)))

(defclass mcl_3dl_msgs::Status
  :super ros::object
  :slots (_header _status _error _convergence_status _particle_size _match_ratio _entropy ))

(defmethod mcl_3dl_msgs::Status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) 0)
    ((:error __error) 0)
    ((:convergence_status __convergence_status) 0)
    ((:particle_size __particle_size) 0)
    ((:match_ratio __match_ratio) 0.0)
    ((:entropy __entropy) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (round __status))
   (setq _error (round __error))
   (setq _convergence_status (round __convergence_status))
   (setq _particle_size (round __particle_size))
   (setq _match_ratio (float __match_ratio))
   (setq _entropy (float __entropy))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:convergence_status
   (&optional __convergence_status)
   (if __convergence_status (setq _convergence_status __convergence_status)) _convergence_status)
  (:particle_size
   (&optional __particle_size)
   (if __particle_size (setq _particle_size __particle_size)) _particle_size)
  (:match_ratio
   (&optional __match_ratio)
   (if __match_ratio (setq _match_ratio __match_ratio)) _match_ratio)
  (:entropy
   (&optional __entropy)
   (if __entropy (setq _entropy __entropy)) _entropy)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _status
    1
    ;; uint8 _error
    1
    ;; uint8 _convergence_status
    1
    ;; uint32 _particle_size
    4
    ;; float32 _match_ratio
    4
    ;; float32 _entropy
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _error
       (write-byte _error s)
     ;; uint8 _convergence_status
       (write-byte _convergence_status s)
     ;; uint32 _particle_size
       (write-long _particle_size s)
     ;; float32 _match_ratio
       (sys::poke _match_ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _entropy
       (sys::poke _entropy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _error
     (setq _error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _convergence_status
     (setq _convergence_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _particle_size
     (setq _particle_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _match_ratio
     (setq _match_ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _entropy
     (setq _entropy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mcl_3dl_msgs::Status :md5sum-) "f47002d781357aed0b4c4738b39ef49a")
(setf (get mcl_3dl_msgs::Status :datatype-) "mcl_3dl_msgs/Status")
(setf (get mcl_3dl_msgs::Status :definition-)
      "std_msgs/Header header

# status definitions

uint8 NORMAL = 0
uint8 GLOBAL_LOCALIZATION = 1
uint8 EXPANSION_RESETTING = 2

uint8 status

# error definitions

uint8 ERROR_NORMAL = 0
uint8 ERROR_POINTS_NOT_FOUND = 1

uint8 error

# convergence status definitions

uint8 CONVERGENCE_STATUS_NORMAL = 0
uint8 CONVERGENCE_STATUS_CONVERGED = 1
uint8 CONVERGENCE_STATUS_LARGE_STD_VALUE = 2

uint8 convergence_status

uint32 particle_size
float32 match_ratio
float32 entropy

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

")



(provide :mcl_3dl_msgs/Status "f47002d781357aed0b4c4738b39ef49a")


