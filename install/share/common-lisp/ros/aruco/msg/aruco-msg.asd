
(cl:in-package :asdf)

(defsystem "aruco-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Marker" :depends-on ("_package_Marker"))
    (:file "_package_Marker" :depends-on ("_package"))
  ))