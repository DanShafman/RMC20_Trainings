;; Auto-generated. Do not edit!


(when (boundp 'advanced_ros_demo::Testdata)
  (if (not (find-package "ADVANCED_ROS_DEMO"))
    (make-package "ADVANCED_ROS_DEMO"))
  (shadow 'Testdata (find-package "ADVANCED_ROS_DEMO")))
(unless (find-package "ADVANCED_ROS_DEMO::TESTDATA")
  (make-package "ADVANCED_ROS_DEMO::TESTDATA"))

(in-package "ROS")
;;//! \htmlinclude Testdata.msg.html


(defclass advanced_ros_demo::Testdata
  :super ros::object
  :slots (_size _name ))

(defmethod advanced_ros_demo::Testdata
  (:init
   (&key
    ((:size __size) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _size (round __size))
   (setq _name (string __name))
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; int8 _size
    1
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _size
       (write-byte _size s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _size
     (setq _size (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _size 127) (setq _size (- _size 256)))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get advanced_ros_demo::Testdata :md5sum-) "e0d915e95f9f4c214eaa0fa3036c01c2")
(setf (get advanced_ros_demo::Testdata :datatype-) "advanced_ros_demo/Testdata")
(setf (get advanced_ros_demo::Testdata :definition-)
      "int8 size
string name
")



(provide :advanced_ros_demo/Testdata "e0d915e95f9f4c214eaa0fa3036c01c2")


