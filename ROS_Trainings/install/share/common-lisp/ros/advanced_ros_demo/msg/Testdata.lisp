; Auto-generated. Do not edit!


(cl:in-package advanced_ros_demo-msg)


;//! \htmlinclude Testdata.msg.html

(cl:defclass <Testdata> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass Testdata (<Testdata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Testdata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Testdata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name advanced_ros_demo-msg:<Testdata> is deprecated: use advanced_ros_demo-msg:Testdata instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <Testdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader advanced_ros_demo-msg:size-val is deprecated.  Use advanced_ros_demo-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Testdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader advanced_ros_demo-msg:name-val is deprecated.  Use advanced_ros_demo-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Testdata>) ostream)
  "Serializes a message object of type '<Testdata>"
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Testdata>) istream)
  "Deserializes a message object of type '<Testdata>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Testdata>)))
  "Returns string type for a message object of type '<Testdata>"
  "advanced_ros_demo/Testdata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Testdata)))
  "Returns string type for a message object of type 'Testdata"
  "advanced_ros_demo/Testdata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Testdata>)))
  "Returns md5sum for a message object of type '<Testdata>"
  "e0d915e95f9f4c214eaa0fa3036c01c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Testdata)))
  "Returns md5sum for a message object of type 'Testdata"
  "e0d915e95f9f4c214eaa0fa3036c01c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Testdata>)))
  "Returns full string definition for message of type '<Testdata>"
  (cl:format cl:nil "int8 size~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Testdata)))
  "Returns full string definition for message of type 'Testdata"
  (cl:format cl:nil "int8 size~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Testdata>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Testdata>))
  "Converts a ROS message object to a list"
  (cl:list 'Testdata
    (cl:cons ':size (size msg))
    (cl:cons ':name (name msg))
))
