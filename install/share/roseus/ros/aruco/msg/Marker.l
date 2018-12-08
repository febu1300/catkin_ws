;; Auto-generated. Do not edit!


(when (boundp 'aruco::Marker)
  (if (not (find-package "ARUCO"))
    (make-package "ARUCO"))
  (shadow 'Marker (find-package "ARUCO")))
(unless (find-package "ARUCO::MARKER")
  (make-package "ARUCO::MARKER"))

(in-package "ROS")
;;//! \htmlinclude Marker.msg.html


(defclass aruco::Marker
  :super ros::object
  :slots (_posx _posy _posz _rotx _roty _rotz _size _id ))

(defmethod aruco::Marker
  (:init
   (&key
    ((:posx __posx) 0.0)
    ((:posy __posy) 0.0)
    ((:posz __posz) 0.0)
    ((:rotx __rotx) 0.0)
    ((:roty __roty) 0.0)
    ((:rotz __rotz) 0.0)
    ((:size __size) 0.0)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _posx (float __posx))
   (setq _posy (float __posy))
   (setq _posz (float __posz))
   (setq _rotx (float __rotx))
   (setq _roty (float __roty))
   (setq _rotz (float __rotz))
   (setq _size (float __size))
   (setq _id (round __id))
   self)
  (:posx
   (&optional __posx)
   (if __posx (setq _posx __posx)) _posx)
  (:posy
   (&optional __posy)
   (if __posy (setq _posy __posy)) _posy)
  (:posz
   (&optional __posz)
   (if __posz (setq _posz __posz)) _posz)
  (:rotx
   (&optional __rotx)
   (if __rotx (setq _rotx __rotx)) _rotx)
  (:roty
   (&optional __roty)
   (if __roty (setq _roty __roty)) _roty)
  (:rotz
   (&optional __rotz)
   (if __rotz (setq _rotz __rotz)) _rotz)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; float64 _posx
    8
    ;; float64 _posy
    8
    ;; float64 _posz
    8
    ;; float64 _rotx
    8
    ;; float64 _roty
    8
    ;; float64 _rotz
    8
    ;; float64 _size
    8
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _posx
       (sys::poke _posx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _posy
       (sys::poke _posy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _posz
       (sys::poke _posz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rotx
       (sys::poke _rotx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roty
       (sys::poke _roty (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rotz
       (sys::poke _rotz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _size
       (sys::poke _size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _posx
     (setq _posx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _posy
     (setq _posy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _posz
     (setq _posz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rotx
     (setq _rotx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roty
     (setq _roty (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rotz
     (setq _rotz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _size
     (setq _size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get aruco::Marker :md5sum-) "bf2cecebc9afd48ac2cbae7c86d68949")
(setf (get aruco::Marker :datatype-) "aruco/Marker")
(setf (get aruco::Marker :definition-)
      "float64 posx
float64 posy
float64 posz
float64 rotx
float64 roty
float64 rotz
float64 size
int32 id
")



(provide :aruco/Marker "bf2cecebc9afd48ac2cbae7c86d68949")


