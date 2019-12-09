
(cl:in-package :asdf)

(defsystem "advanced_ros_demo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Testdata" :depends-on ("_package_Testdata"))
    (:file "_package_Testdata" :depends-on ("_package"))
  ))