# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(cv_bridge_480_CONFIG_INCLUDED)
  return()
endif()
set(cv_bridge_480_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(cv_bridge_480_SOURCE_PREFIX /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/cv_bridge_480)
  set(cv_bridge_480_DEVEL_PREFIX /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel)
  set(cv_bridge_480_INSTALL_PREFIX "")
  set(cv_bridge_480_PREFIX ${cv_bridge_480_DEVEL_PREFIX})
else()
  set(cv_bridge_480_SOURCE_PREFIX "")
  set(cv_bridge_480_DEVEL_PREFIX "")
  set(cv_bridge_480_INSTALL_PREFIX /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/install)
  set(cv_bridge_480_PREFIX ${cv_bridge_480_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'cv_bridge_480' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(cv_bridge_480_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/cv_bridge_480/include;/home/liu/opencv/opencv-4.8.0/build;/home/liu/opencv/opencv-4.8.0/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudev/include;/home/liu/opencv/opencv-4.8.0/modules/core/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudaarithm/include;/home/liu/opencv/opencv-4.8.0/modules/flann/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/hdf/include;/home/liu/opencv/opencv-4.8.0/modules/imgproc/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/intensity_transform/include;/home/liu/opencv/opencv-4.8.0/modules/ml/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/phase_unwrapping/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/plot/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/quality/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/reg/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/surface_matching/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/viz/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/alphamat/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudafilters/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudaimgproc/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudawarping/include;/home/liu/opencv/opencv-4.8.0/modules/dnn/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/dnn_superres/include;/home/liu/opencv/opencv-4.8.0/modules/features2d/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/freetype/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/fuzzy/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/hfs/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/img_hash/include;/home/liu/opencv/opencv-4.8.0/modules/imgcodecs/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/line_descriptor/include;/home/liu/opencv/opencv-4.8.0/modules/photo/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/saliency/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/text/include;/home/liu/opencv/opencv-4.8.0/modules/videoio/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/xphoto/include;/home/liu/opencv/opencv-4.8.0/modules/calib3d/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudacodec/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudafeatures2d/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudastereo/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/datasets/include;/home/liu/opencv/opencv-4.8.0/modules/highgui/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/mcc/include;/home/liu/opencv/opencv-4.8.0/modules/objdetect/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/rapid/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/rgbd/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/shape/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/structured_light/include;/home/liu/opencv/opencv-4.8.0/modules/ts/include;/home/liu/opencv/opencv-4.8.0/modules/video/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/wechat_qrcode/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/xfeatures2d/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/ximgproc/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/xobjdetect/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/aruco/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/bgsegm/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/bioinspired/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/ccalib/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudabgsegm/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudalegacy/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudaobjdetect/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/dnn_objdetect/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/dpm/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/face/include;/home/liu/opencv/opencv-4.8.0/modules/gapi/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/optflow/include;/home/liu/opencv/opencv-4.8.0/modules/stitching/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/tracking/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudaoptflow/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/stereo/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/superres/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/videostab/include " STREQUAL " ")
  set(cv_bridge_480_INCLUDE_DIRS "")
  set(_include_dirs "/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/cv_bridge_480/include;/home/liu/opencv/opencv-4.8.0/build;/home/liu/opencv/opencv-4.8.0/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudev/include;/home/liu/opencv/opencv-4.8.0/modules/core/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudaarithm/include;/home/liu/opencv/opencv-4.8.0/modules/flann/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/hdf/include;/home/liu/opencv/opencv-4.8.0/modules/imgproc/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/intensity_transform/include;/home/liu/opencv/opencv-4.8.0/modules/ml/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/phase_unwrapping/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/plot/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/quality/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/reg/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/surface_matching/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/viz/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/alphamat/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudafilters/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudaimgproc/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudawarping/include;/home/liu/opencv/opencv-4.8.0/modules/dnn/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/dnn_superres/include;/home/liu/opencv/opencv-4.8.0/modules/features2d/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/freetype/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/fuzzy/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/hfs/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/img_hash/include;/home/liu/opencv/opencv-4.8.0/modules/imgcodecs/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/line_descriptor/include;/home/liu/opencv/opencv-4.8.0/modules/photo/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/saliency/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/text/include;/home/liu/opencv/opencv-4.8.0/modules/videoio/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/xphoto/include;/home/liu/opencv/opencv-4.8.0/modules/calib3d/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudacodec/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudafeatures2d/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudastereo/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/datasets/include;/home/liu/opencv/opencv-4.8.0/modules/highgui/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/mcc/include;/home/liu/opencv/opencv-4.8.0/modules/objdetect/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/rapid/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/rgbd/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/shape/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/structured_light/include;/home/liu/opencv/opencv-4.8.0/modules/ts/include;/home/liu/opencv/opencv-4.8.0/modules/video/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/wechat_qrcode/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/xfeatures2d/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/ximgproc/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/xobjdetect/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/aruco/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/bgsegm/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/bioinspired/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/ccalib/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudabgsegm/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudalegacy/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudaobjdetect/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/dnn_objdetect/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/dpm/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/face/include;/home/liu/opencv/opencv-4.8.0/modules/gapi/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/optflow/include;/home/liu/opencv/opencv-4.8.0/modules/stitching/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/tracking/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/cudaoptflow/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/stereo/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/superres/include;/home/liu/opencv/opencv_contrib-4.8.0/modules/videostab/include")
  if(NOT "https://github.com/ros-perception/vision_opencv/issues " STREQUAL " ")
    set(_report "Check the issue tracker 'https://github.com/ros-perception/vision_opencv/issues' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "http://www.ros.org/wiki/cv_bridge " STREQUAL " ")
    set(_report "Check the website 'http://www.ros.org/wiki/cv_bridge' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Vincent Rabaud <vincent.rabaud@gmail.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${cv_bridge_480_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'cv_bridge_480' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'cv_bridge_480' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/cv_bridge_480/${idir}'.  ${_report}")
    endif()
    _list_append_unique(cv_bridge_480_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "cv_bridge_480;/home/liu/opencv/opencv-4.8.0/build/lib/libopencv_core.so.4.8.0;/home/liu/opencv/opencv-4.8.0/build/lib/libopencv_imgproc.so.4.8.0;/home/liu/opencv/opencv-4.8.0/build/lib/libopencv_imgcodecs.so.4.8.0")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND cv_bridge_480_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND cv_bridge_480_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT cv_bridge_480_NUM_DUMMY_TARGETS)
      set(cv_bridge_480_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::cv_bridge_480::wrapped-linker-option${cv_bridge_480_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR cv_bridge_480_NUM_DUMMY_TARGETS "${cv_bridge_480_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::cv_bridge_480::wrapped-linker-option${cv_bridge_480_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND cv_bridge_480_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND cv_bridge_480_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND cv_bridge_480_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib;/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/devel/lib;/home/liu/wit/wit_ros_ws/devel/lib;/opt/ros/noetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(cv_bridge_480_LIBRARY_DIRS ${lib_path})
      list(APPEND cv_bridge_480_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'cv_bridge_480'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND cv_bridge_480_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(cv_bridge_480_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${cv_bridge_480_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "rosconsole;sensor_msgs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 cv_bridge_480_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${cv_bridge_480_dep}_FOUND)
      find_package(${cv_bridge_480_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${cv_bridge_480_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(cv_bridge_480_INCLUDE_DIRS ${${cv_bridge_480_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(cv_bridge_480_LIBRARIES ${cv_bridge_480_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${cv_bridge_480_dep}_LIBRARIES})
  _list_append_deduplicate(cv_bridge_480_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(cv_bridge_480_LIBRARIES ${cv_bridge_480_LIBRARIES})

  _list_append_unique(cv_bridge_480_LIBRARY_DIRS ${${cv_bridge_480_dep}_LIBRARY_DIRS})
  _list_append_deduplicate(cv_bridge_480_EXPORTED_TARGETS ${${cv_bridge_480_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "cv_bridge-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${cv_bridge_480_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
