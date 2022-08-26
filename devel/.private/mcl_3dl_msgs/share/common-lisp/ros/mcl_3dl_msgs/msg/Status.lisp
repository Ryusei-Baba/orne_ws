; Auto-generated. Do not edit!


(cl:in-package mcl_3dl_msgs-msg)


;//! \htmlinclude Status.msg.html

(cl:defclass <Status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0)
   (convergence_status
    :reader convergence_status
    :initarg :convergence_status
    :type cl:fixnum
    :initform 0)
   (particle_size
    :reader particle_size
    :initarg :particle_size
    :type cl:integer
    :initform 0)
   (match_ratio
    :reader match_ratio
    :initarg :match_ratio
    :type cl:float
    :initform 0.0)
   (entropy
    :reader entropy
    :initarg :entropy
    :type cl:float
    :initform 0.0))
)

(cl:defclass Status (<Status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcl_3dl_msgs-msg:<Status> is deprecated: use mcl_3dl_msgs-msg:Status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_3dl_msgs-msg:header-val is deprecated.  Use mcl_3dl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_3dl_msgs-msg:status-val is deprecated.  Use mcl_3dl_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_3dl_msgs-msg:error-val is deprecated.  Use mcl_3dl_msgs-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'convergence_status-val :lambda-list '(m))
(cl:defmethod convergence_status-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_3dl_msgs-msg:convergence_status-val is deprecated.  Use mcl_3dl_msgs-msg:convergence_status instead.")
  (convergence_status m))

(cl:ensure-generic-function 'particle_size-val :lambda-list '(m))
(cl:defmethod particle_size-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_3dl_msgs-msg:particle_size-val is deprecated.  Use mcl_3dl_msgs-msg:particle_size instead.")
  (particle_size m))

(cl:ensure-generic-function 'match_ratio-val :lambda-list '(m))
(cl:defmethod match_ratio-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_3dl_msgs-msg:match_ratio-val is deprecated.  Use mcl_3dl_msgs-msg:match_ratio instead.")
  (match_ratio m))

(cl:ensure-generic-function 'entropy-val :lambda-list '(m))
(cl:defmethod entropy-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_3dl_msgs-msg:entropy-val is deprecated.  Use mcl_3dl_msgs-msg:entropy instead.")
  (entropy m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Status>)))
    "Constants for message type '<Status>"
  '((:NORMAL . 0)
    (:GLOBAL_LOCALIZATION . 1)
    (:EXPANSION_RESETTING . 2)
    (:ERROR_NORMAL . 0)
    (:ERROR_POINTS_NOT_FOUND . 1)
    (:CONVERGENCE_STATUS_NORMAL . 0)
    (:CONVERGENCE_STATUS_CONVERGED . 1)
    (:CONVERGENCE_STATUS_LARGE_STD_VALUE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Status)))
    "Constants for message type 'Status"
  '((:NORMAL . 0)
    (:GLOBAL_LOCALIZATION . 1)
    (:EXPANSION_RESETTING . 2)
    (:ERROR_NORMAL . 0)
    (:ERROR_POINTS_NOT_FOUND . 1)
    (:CONVERGENCE_STATUS_NORMAL . 0)
    (:CONVERGENCE_STATUS_CONVERGED . 1)
    (:CONVERGENCE_STATUS_LARGE_STD_VALUE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Status>) ostream)
  "Serializes a message object of type '<Status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'convergence_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'particle_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'particle_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'particle_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'particle_size)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'match_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'entropy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Status>) istream)
  "Deserializes a message object of type '<Status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'convergence_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'particle_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'particle_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'particle_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'particle_size)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'match_ratio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'entropy) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Status>)))
  "Returns string type for a message object of type '<Status>"
  "mcl_3dl_msgs/Status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Status)))
  "Returns string type for a message object of type 'Status"
  "mcl_3dl_msgs/Status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Status>)))
  "Returns md5sum for a message object of type '<Status>"
  "f47002d781357aed0b4c4738b39ef49a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Status)))
  "Returns md5sum for a message object of type 'Status"
  "f47002d781357aed0b4c4738b39ef49a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Status>)))
  "Returns full string definition for message of type '<Status>"
  (cl:format cl:nil "std_msgs/Header header~%~%# status definitions~%~%uint8 NORMAL = 0~%uint8 GLOBAL_LOCALIZATION = 1~%uint8 EXPANSION_RESETTING = 2~%~%uint8 status~%~%# error definitions~%~%uint8 ERROR_NORMAL = 0~%uint8 ERROR_POINTS_NOT_FOUND = 1~%~%uint8 error~%~%# convergence status definitions~%~%uint8 CONVERGENCE_STATUS_NORMAL = 0~%uint8 CONVERGENCE_STATUS_CONVERGED = 1~%uint8 CONVERGENCE_STATUS_LARGE_STD_VALUE = 2~%~%uint8 convergence_status~%~%uint32 particle_size~%float32 match_ratio~%float32 entropy~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Status)))
  "Returns full string definition for message of type 'Status"
  (cl:format cl:nil "std_msgs/Header header~%~%# status definitions~%~%uint8 NORMAL = 0~%uint8 GLOBAL_LOCALIZATION = 1~%uint8 EXPANSION_RESETTING = 2~%~%uint8 status~%~%# error definitions~%~%uint8 ERROR_NORMAL = 0~%uint8 ERROR_POINTS_NOT_FOUND = 1~%~%uint8 error~%~%# convergence status definitions~%~%uint8 CONVERGENCE_STATUS_NORMAL = 0~%uint8 CONVERGENCE_STATUS_CONVERGED = 1~%uint8 CONVERGENCE_STATUS_LARGE_STD_VALUE = 2~%~%uint8 convergence_status~%~%uint32 particle_size~%float32 match_ratio~%float32 entropy~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Status>))
  "Converts a ROS message object to a list"
  (cl:list 'Status
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':error (error msg))
    (cl:cons ':convergence_status (convergence_status msg))
    (cl:cons ':particle_size (particle_size msg))
    (cl:cons ':match_ratio (match_ratio msg))
    (cl:cons ':entropy (entropy msg))
))
