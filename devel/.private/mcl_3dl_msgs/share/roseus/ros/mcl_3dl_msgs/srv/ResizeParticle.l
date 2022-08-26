;; Auto-generated. Do not edit!


(when (boundp 'mcl_3dl_msgs::ResizeParticle)
  (if (not (find-package "MCL_3DL_MSGS"))
    (make-package "MCL_3DL_MSGS"))
  (shadow 'ResizeParticle (find-package "MCL_3DL_MSGS")))
(unless (find-package "MCL_3DL_MSGS::RESIZEPARTICLE")
  (make-package "MCL_3DL_MSGS::RESIZEPARTICLE"))
(unless (find-package "MCL_3DL_MSGS::RESIZEPARTICLEREQUEST")
  (make-package "MCL_3DL_MSGS::RESIZEPARTICLEREQUEST"))
(unless (find-package "MCL_3DL_MSGS::RESIZEPARTICLERESPONSE")
  (make-package "MCL_3DL_MSGS::RESIZEPARTICLERESPONSE"))

(in-package "ROS")





(defclass mcl_3dl_msgs::ResizeParticleRequest
  :super ros::object
  :slots (_size ))

(defmethod mcl_3dl_msgs::ResizeParticleRequest
  (:init
   (&key
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _size (round __size))
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; int32 _size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _size
       (write-long _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mcl_3dl_msgs::ResizeParticleResponse
  :super ros::object
  :slots ())

(defmethod mcl_3dl_msgs::ResizeParticleResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mcl_3dl_msgs::ResizeParticle
  :super ros::object
  :slots ())

(setf (get mcl_3dl_msgs::ResizeParticle :md5sum-) "97da5de9999c5ce84f539773c8d0b2a3")
(setf (get mcl_3dl_msgs::ResizeParticle :datatype-) "mcl_3dl_msgs/ResizeParticle")
(setf (get mcl_3dl_msgs::ResizeParticle :request) mcl_3dl_msgs::ResizeParticleRequest)
(setf (get mcl_3dl_msgs::ResizeParticle :response) mcl_3dl_msgs::ResizeParticleResponse)

(defmethod mcl_3dl_msgs::ResizeParticleRequest
  (:response () (instance mcl_3dl_msgs::ResizeParticleResponse :init)))

(setf (get mcl_3dl_msgs::ResizeParticleRequest :md5sum-) "97da5de9999c5ce84f539773c8d0b2a3")
(setf (get mcl_3dl_msgs::ResizeParticleRequest :datatype-) "mcl_3dl_msgs/ResizeParticleRequest")
(setf (get mcl_3dl_msgs::ResizeParticleRequest :definition-)
      "int32 size
---

")

(setf (get mcl_3dl_msgs::ResizeParticleResponse :md5sum-) "97da5de9999c5ce84f539773c8d0b2a3")
(setf (get mcl_3dl_msgs::ResizeParticleResponse :datatype-) "mcl_3dl_msgs/ResizeParticleResponse")
(setf (get mcl_3dl_msgs::ResizeParticleResponse :definition-)
      "int32 size
---

")



(provide :mcl_3dl_msgs/ResizeParticle "97da5de9999c5ce84f539773c8d0b2a3")


