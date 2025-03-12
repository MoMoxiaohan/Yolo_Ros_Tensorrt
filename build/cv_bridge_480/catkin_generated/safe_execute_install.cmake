execute_process(COMMAND "/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/cv_bridge_480/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/cv_bridge_480/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
