; Auto-generated. Do not edit!


(cl:in-package mcl_3dl_msgs-srv)


;//! \htmlinclude ResizeParticle-request.msg.html

(cl:defclass <ResizeParticle-request> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0))
)

(cl:defclass ResizeParticle-request (<ResizeParticle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResizeParticle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResizeParticle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcl_3dl_msgs-srv:<ResizeParticle-request> is deprecated: use mcl_3dl_msgs-srv:ResizeParticle-request instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <ResizeParticle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_3dl_msgs-srv:size-val is deprecated.  Use mcl_3dl_msgs-srv:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResizeParticle-request>) ostream)
  "Serializes a message object of type '<ResizeParticle-request>"
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResizeParticle-request>) istream)
  "Deserializes a message object of type '<ResizeParticle-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResizeParticle-request>)))
  "Returns string type for a service object of type '<ResizeParticle-request>"
  "mcl_3dl_msgs/ResizeParticleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResizeParticle-request)))
  "Returns string type for a service object of type 'ResizeParticle-request"
  "mcl_3dl_msgs/ResizeParticleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResizeParticle-request>)))
  "Returns md5sum for a message object of type '<ResizeParticle-request>"
  "97da5de9999c5ce84f539773c8d0b2a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResizeParticle-request)))
  "Returns md5sum for a message object of type 'ResizeParticle-request"
  "97da5de9999c5ce84f539773c8d0b2a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResizeParticle-request>)))
  "Returns full string definition for message of type '<ResizeParticle-request>"
  (cl:format cl:nil "int32 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResizeParticle-request)))
  "Returns full string definition for message of type 'ResizeParticle-request"
  (cl:format cl:nil "int32 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResizeParticle-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResizeParticle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResizeParticle-request
    (cl:cons ':size (size msg))
))
;//! \htmlinclude ResizeParticle-response.msg.html

(cl:defclass <ResizeParticle-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResizeParticle-response (<ResizeParticle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResizeParticle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResizeParticle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcl_3dl_msgs-srv:<ResizeParticle-response> is deprecated: use mcl_3dl_msgs-srv:ResizeParticle-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResizeParticle-response>) ostream)
  "Serializes a message object of type '<ResizeParticle-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResizeParticle-response>) istream)
  "Deserializes a message object of type '<ResizeParticle-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResizeParticle-response>)))
  "Returns string type for a service object of type '<ResizeParticle-response>"
  "mcl_3dl_msgs/ResizeParticleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResizeParticle-response)))
  "Returns string type for a service object of type 'ResizeParticle-response"
  "mcl_3dl_msgs/ResizeParticleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResizeParticle-response>)))
  "Returns md5sum for a message object of type '<ResizeParticle-response>"
  "97da5de9999c5ce84f539773c8d0b2a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResizeParticle-response)))
  "Returns md5sum for a message object of type 'ResizeParticle-response"
  "97da5de9999c5ce84f539773c8d0b2a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResizeParticle-response>)))
  "Returns full string definition for message of type '<ResizeParticle-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResizeParticle-response)))
  "Returns full string definition for message of type 'ResizeParticle-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResizeParticle-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResizeParticle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResizeParticle-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResizeParticle)))
  'ResizeParticle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResizeParticle)))
  'ResizeParticle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResizeParticle)))
  "Returns string type for a service object of type '<ResizeParticle>"
  "mcl_3dl_msgs/ResizeParticle")