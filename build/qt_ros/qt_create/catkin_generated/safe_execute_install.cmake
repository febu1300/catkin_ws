execute_process(COMMAND "/home/buruk/catkin_ws/build/qt_ros/qt_create/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/buruk/catkin_ws/build/qt_ros/qt_create/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
