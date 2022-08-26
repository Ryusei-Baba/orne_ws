;; Auto-generated. Do not edit!


(when (boundp 'mcl_3dl_msgs::LoadPCD)
  (if (not (find-package "MCL_3DL_MSGS"))
    (make-package "MCL_3DL_MSGS"))
  (shadow 'LoadPCD (find-package "MCL_3DL_MSGS")))
(unless (find-package "MCL_3DL_MSGS::LOADPCD")
  (make-package "MCL_3DL_MSGS::LOADPCD"))
(unless (find-package "MCL_3DL_MSGS::LOADPCDREQUEST")
  (make-package "MCL_3DL_MSGS::LOADPCDREQUEST"))
(unless (find-package "MCL_3DL_MSGS::LOADPCDRESPONSE")
  (make-package "MCL_3DL_MSGS::LOADPCDRESPONSE"))

(in-package "ROS")





(defclass mcl_3dl_msgs::LoadPCDRequest
  :super ros::object
  :slots (_pcd_path ))

(defmethod mcl_3dl_msgs::LoadPCDRequest
  (:init
   (&key
    ((:pcd_path __pcd_path) "")
    )
   (send-super :init)
   (setq _pcd_path (string __pcd_path))
   self)
  (:pcd_path
   (&optional __pcd_path)
   (if __pcd_path (setq _pcd_path __pcd_path)) _pcd_path)
  (:serialization-length
   ()
   (+
    ;; string _pcd_path
    4 (length _pcd_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pcd_path
       (write-long (length _pcd_path) s) (princ _pcd_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pcd_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pcd_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mcl_3dl_msgs::LoadPCDResponse
  :super ros::object
  :slots (_success ))

(defmethod mcl_3dl_msgs::LoadPCDResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mcl_3dl_msgs::LoadPCD
  :super ros::object
  :slots ())

(setf (get mcl_3dl_msgs::LoadPCD :md5sum-) "b8646510804710605aeee202394f2fcf")
(setf (get mcl_3dl_msgs::LoadPCD :datatype-) "mcl_3dl_msgs/LoadPCD")
(setf (get mcl_3dl_msgs::LoadPCD :request) mcl_3dl_msgs::LoadPCDRequest)
(setf (get mcl_3dl_msgs::LoadPCD :response) mcl_3dl_msgs::LoadPCDResponse)

(defmethod mcl_3dl_msgs::LoadPCDRequest
  (:response () (instance mcl_3dl_msgs::LoadPCDResponse :init)))

(setf (get mcl_3dl_msgs::LoadPCDRequest :md5sum-) "b8646510804710605aeee202394f2fcf")
(setf (get mcl_3dl_msgs::LoadPCDRequest :datatype-) "mcl_3dl_msgs/LoadPCDRequest")
(setf (get mcl_3dl_msgs::LoadPCDRequest :definition-)
      "string pcd_path
---
bool success

")

(setf (get mcl_3dl_msgs::LoadPCDResponse :md5sum-) "b8646510804710605aeee202394f2fcf")
(setf (get mcl_3dl_msgs::LoadPCDResponse :datatype-) "mcl_3dl_msgs/LoadPCDResponse")
(setf (get mcl_3dl_msgs::LoadPCDResponse :definition-)
      "string pcd_path
---
bool success

")



(provide :mcl_3dl_msgs/LoadPCD "b8646510804710605aeee202394f2fcf")


