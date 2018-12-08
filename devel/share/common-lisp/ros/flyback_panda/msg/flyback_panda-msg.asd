
(cl:in-package :asdf)

(defsystem "flyback_panda-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Num" :depends-on ("_package_Num"))
    (:file "_package_Num" :depends-on ("_package"))
    (:file "image" :depends-on ("_package_image"))
    (:file "_package_image" :depends-on ("_package"))
  ))