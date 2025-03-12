#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/cv_bridge_480"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/install/lib/python3/dist-packages:/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build" \
    "/usr/bin/python3" \
    "/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/cv_bridge_480/setup.py" \
    egg_info --egg-base /home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/cv_bridge_480 \
    build --build-base "/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/build/cv_bridge_480" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/install" --install-scripts="/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/install/bin"
