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

# Utility rule file for run_tests_cv_bridge_480_nosetests_python_bindings.py.

# Include any custom commands dependencies for this target.
include cv_bridge_480/test/CMakeFiles/run_tests_cv_bridge_480_nosetests_python_bindings.py.dir/compiler_depend.make

# Include the progress variables for this target.
include cv_bridge_480/test/CMakeFiles/run_tests_cv_bridge_480_nosetests_python_bindings.py.dir/progress.make

cv_bridge_480/test/CMakeFiles/run_tests_cv_bridge_480_nosetests_python_bindings.py:
	cd /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/cv_bridge_480/test && ../../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/run_tests.py /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/test_results/cv_bridge_480/nosetests-python_bindings.py.xml "\"/usr/local/bin/cmake\" -E make_directory /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/test_results/cv_bridge_480" "/usr/bin/nosetests3 -P --process-timeout=60 /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/cv_bridge_480/test/python_bindings.py --with-xunit --xunit-file=/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/test_results/cv_bridge_480/nosetests-python_bindings.py.xml"

run_tests_cv_bridge_480_nosetests_python_bindings.py: cv_bridge_480/test/CMakeFiles/run_tests_cv_bridge_480_nosetests_python_bindings.py
run_tests_cv_bridge_480_nosetests_python_bindings.py: cv_bridge_480/test/CMakeFiles/run_tests_cv_bridge_480_nosetests_python_bindings.py.dir/build.make
.PHONY : run_tests_cv_bridge_480_nosetests_python_bindings.py

# Rule to build all files generated by this target.
cv_bridge_480/test/CMakeFiles/run_tests_cv_bridge_480_nosetests_python_bindings.py.dir/build: run_tests_cv_bridge_480_nosetests_python_bindings.py
.PHONY : cv_bridge_480/test/CMakeFiles/run_tests_cv_bridge_480_nosetests_python_bindings.py.dir/build

cv_bridge_480/test/CMakeFiles/run_tests_cv_bridge_480_nosetests_python_bindings.py.dir/clean:
	cd /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/cv_bridge_480/test && $(CMAKE_COMMAND) -P CMakeFiles/run_tests_cv_bridge_480_nosetests_python_bindings.py.dir/cmake_clean.cmake
.PHONY : cv_bridge_480/test/CMakeFiles/run_tests_cv_bridge_480_nosetests_python_bindings.py.dir/clean

cv_bridge_480/test/CMakeFiles/run_tests_cv_bridge_480_nosetests_python_bindings.py.dir/depend:
	cd /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/cv_bridge_480/test /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/cv_bridge_480/test /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/cv_bridge_480/test/CMakeFiles/run_tests_cv_bridge_480_nosetests_python_bindings.py.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : cv_bridge_480/test/CMakeFiles/run_tests_cv_bridge_480_nosetests_python_bindings.py.dir/depend

