
(cl:in-package :asdf)

(defsystem "mcl_3dl_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LoadPCD" :depends-on ("_package_LoadPCD"))
    (:file "_package_LoadPCD" :depends-on ("_package"))
    (:file "ResizeParticle" :depends-on ("_package_ResizeParticle"))
    (:file "_package_ResizeParticle" :depends-on ("_package"))
  ))