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

# Utility rule file for clean_test_results_cv_bridge_480.

# Include any custom commands dependencies for this target.
include cv_bridge_480/test/CMakeFiles/clean_test_results_cv_bridge_480.dir/compiler_depend.make

# Include the progress variables for this target.
include cv_bridge_480/test/CMakeFiles/clean_test_results_cv_bridge_480.dir/progress.make

cv_bridge_480/test/CMakeFiles/clean_test_results_cv_bridge_480:
	cd /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/cv_bridge_480/test && /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/remove_test_results.py /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/test_results/cv_bridge_480

clean_test_results_cv_bridge_480: cv_bridge_480/test/CMakeFiles/clean_test_results_cv_bridge_480
clean_test_results_cv_bridge_480: cv_bridge_480/test/CMakeFiles/clean_test_results_cv_bridge_480.dir/build.make
.PHONY : clean_test_results_cv_bridge_480

# Rule to build all files generated by this target.
cv_bridge_480/test/CMakeFiles/clean_test_results_cv_bridge_480.dir/build: clean_test_results_cv_bridge_480
.PHONY : cv_bridge_480/test/CMakeFiles/clean_test_results_cv_bridge_480.dir/build

cv_bridge_480/test/CMakeFiles/clean_test_results_cv_bridge_480.dir/clean:
	cd /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/cv_bridge_480/test && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_cv_bridge_480.dir/cmake_clean.cmake
.PHONY : cv_bridge_480/test/CMakeFiles/clean_test_results_cv_bridge_480.dir/clean

cv_bridge_480/test/CMakeFiles/clean_test_results_cv_bridge_480.dir/depend:
	cd /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/cv_bridge_480/test /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/cv_bridge_480/test /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/cv_bridge_480/test/CMakeFiles/clean_test_results_cv_bridge_480.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : cv_bridge_480/test/CMakeFiles/clean_test_results_cv_bridge_480.dir/depend

