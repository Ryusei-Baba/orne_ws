; Auto-generated. Do not edit!


(cl:in-package mcl_3dl_msgs-srv)


;//! \htmlinclude LoadPCD-request.msg.html

(cl:defclass <LoadPCD-request> (roslisp-msg-protocol:ros-message)
  ((pcd_path
    :reader pcd_path
    :initarg :pcd_path
    :type cl:string
    :initform ""))
)

(cl:defclass LoadPCD-request (<LoadPCD-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadPCD-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadPCD-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcl_3dl_msgs-srv:<LoadPCD-request> is deprecated: use mcl_3dl_msgs-srv:LoadPCD-request instead.")))

(cl:ensure-generic-function 'pcd_path-val :lambda-list '(m))
(cl:defmethod pcd_path-val ((m <LoadPCD-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_3dl_msgs-srv:pcd_path-val is deprecated.  Use mcl_3dl_msgs-srv:pcd_path instead.")
  (pcd_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadPCD-request>) ostream)
  "Serializes a message object of type '<LoadPCD-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pcd_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pcd_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadPCD-request>) istream)
  "Deserializes a message object of type '<LoadPCD-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pcd_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pcd_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadPCD-request>)))
  "Returns string type for a service object of type '<LoadPCD-request>"
  "mcl_3dl_msgs/LoadPCDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadPCD-request)))
  "Returns string type for a service object of type 'LoadPCD-request"
  "mcl_3dl_msgs/LoadPCDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadPCD-request>)))
  "Returns md5sum for a message object of type '<LoadPCD-request>"
  "b8646510804710605aeee202394f2fcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadPCD-request)))
  "Returns md5sum for a message object of type 'LoadPCD-request"
  "b8646510804710605aeee202394f2fcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadPCD-request>)))
  "Returns full string definition for message of type '<LoadPCD-request>"
  (cl:format cl:nil "string pcd_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadPCD-request)))
  "Returns full string definition for message of type 'LoadPCD-request"
  (cl:format cl:nil "string pcd_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadPCD-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pcd_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadPCD-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadPCD-request
    (cl:cons ':pcd_path (pcd_path msg))
))
;//! \htmlinclude LoadPCD-response.msg.html

(cl:defclass <LoadPCD-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LoadPCD-response (<LoadPCD-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadPCD-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadPCD-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcl_3dl_msgs-srv:<LoadPCD-response> is deprecated: use mcl_3dl_msgs-srv:LoadPCD-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LoadPCD-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_3dl_msgs-srv:success-val is deprecated.  Use mcl_3dl_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadPCD-response>) ostream)
  "Serializes a message object of type '<LoadPCD-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadPCD-response>) istream)
  "Deserializes a message object of type '<LoadPCD-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadPCD-response>)))
  "Returns string type for a service object of type '<LoadPCD-response>"
  "mcl_3dl_msgs/LoadPCDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadPCD-response)))
  "Returns string type for a service object of type 'LoadPCD-response"
  "mcl_3dl_msgs/LoadPCDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadPCD-response>)))
  "Returns md5sum for a message object of type '<LoadPCD-response>"
  "b8646510804710605aeee202394f2fcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadPCD-response)))
  "Returns md5sum for a message object of type 'LoadPCD-response"
  "b8646510804710605aeee202394f2fcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadPCD-response>)))
  "Returns full string definition for message of type '<LoadPCD-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadPCD-response)))
  "Returns full string definition for message of type 'LoadPCD-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadPCD-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadPCD-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadPCD-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadPCD)))
  'LoadPCD-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadPCD)))
  'LoadPCD-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadPCD)))
  "Returns string type for a service object of type '<LoadPCD>"
  "mcl_3dl_msgs/LoadPCD")