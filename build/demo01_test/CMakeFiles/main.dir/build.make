# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build

# Include any dependencies generated for this target.
include demo01_test/CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include demo01_test/CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include demo01_test/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include demo01_test/CMakeFiles/main.dir/flags.make

demo01_test/CMakeFiles/main.dir/src/main.cpp.o: demo01_test/CMakeFiles/main.dir/flags.make
demo01_test/CMakeFiles/main.dir/src/main.cpp.o: /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/demo01_test/src/main.cpp
demo01_test/CMakeFiles/main.dir/src/main.cpp.o: demo01_test/CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object demo01_test/CMakeFiles/main.dir/src/main.cpp.o"
	cd /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/demo01_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT demo01_test/CMakeFiles/main.dir/src/main.cpp.o -MF CMakeFiles/main.dir/src/main.cpp.o.d -o CMakeFiles/main.dir/src/main.cpp.o -c /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/demo01_test/src/main.cpp

demo01_test/CMakeFiles/main.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/src/main.cpp.i"
	cd /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/demo01_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/demo01_test/src/main.cpp > CMakeFiles/main.dir/src/main.cpp.i

demo01_test/CMakeFiles/main.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/main.cpp.s"
	cd /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/demo01_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/demo01_test/src/main.cpp -o CMakeFiles/main.dir/src/main.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/src/main.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: demo01_test/CMakeFiles/main.dir/src/main.cpp.o
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: demo01_test/CMakeFiles/main.dir/build.make
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/TensorRT-10.0.1.6/targets/x86_64-linux-gnu/lib/libnvinfer.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/TensorRT-10.0.1.6/targets/x86_64-linux-gnu/lib/libnvinfer_plugin.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libcv_bridge.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libimage_transport.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libmessage_filters.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libclass_loader.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libdl.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libroscpp.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/librosconsole.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libroslib.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/librospack.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/librostime.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libcpp_common.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/local/cuda-12.2/lib64/libcudart_static.a
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/librt.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_gapi.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_stitching.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_alphamat.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_aruco.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_bgsegm.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_bioinspired.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_ccalib.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_cudabgsegm.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_cudafeatures2d.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_cudaobjdetect.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_cudastereo.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_dnn_objdetect.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_dnn_superres.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_dpm.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_face.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_freetype.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_fuzzy.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_hdf.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_hfs.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_img_hash.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_intensity_transform.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_line_descriptor.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_mcc.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_quality.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_rapid.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_reg.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_rgbd.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_saliency.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_stereo.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_structured_light.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_superres.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_surface_matching.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_tracking.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_videostab.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_viz.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_wechat_qrcode.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_xfeatures2d.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_xobjdetect.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_xphoto.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libcv_bridge.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.2.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libimage_transport.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libmessage_filters.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libclass_loader.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libdl.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libroscpp.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/librosconsole.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libroslib.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/librospack.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/librostime.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /opt/ros/noetic/lib/libcpp_common.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/local/cuda-12.2/lib64/libcudart_static.a
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /usr/lib/x86_64-linux-gnu/librt.so
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_shape.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_highgui.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_datasets.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_plot.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_text.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_ml.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_phase_unwrapping.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_cudacodec.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_videoio.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_cudaoptflow.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_cudalegacy.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_cudawarping.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_optflow.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_ximgproc.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_video.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_imgcodecs.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_objdetect.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_calib3d.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_dnn.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_features2d.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_flann.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_photo.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_cudaimgproc.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_cudafilters.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_imgproc.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_cudaarithm.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_core.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: /home/liu/opencv/opencv-4.8.0/build/lib/libopencv_cudev.so.4.8.0
/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main: demo01_test/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main"
	cd /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/demo01_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demo01_test/CMakeFiles/main.dir/build: /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib/demo01_test/main
.PHONY : demo01_test/CMakeFiles/main.dir/build

demo01_test/CMakeFiles/main.dir/clean:
	cd /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/demo01_test && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : demo01_test/CMakeFiles/main.dir/clean

demo01_test/CMakeFiles/main.dir/depend:
	cd /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/demo01_test /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/demo01_test /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/demo01_test/CMakeFiles/main.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : demo01_test/CMakeFiles/main.dir/depend

