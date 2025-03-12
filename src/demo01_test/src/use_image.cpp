#include"ros/ros.h"
#include"sensor_msgs/Image.h"
#include"sensor_msgs/image_encodings.h"
#include"image_transport/image_transport.h"
#include"cv_bridge/cv_bridge.h"
#include<iostream>
#include"opencv2/opencv.hpp"
using namespace std;
#include "../include/yolov8.hpp"
#include <chrono>
#include<mutex>

namespace fs = ghc::filesystem;


const std::vector<std::string> CLASS_NAMES = {
    "person",         "bicycle",    "car",           "motorcycle",    "airplane",     "bus",           "train",
    "truck",          "boat",       "traffic light", "fire hydrant",  "stop sign",    "parking meter", "bench",
    "bird",           "cat",        "dog",           "horse",         "sheep",        "cow",           "elephant",
    "bear",           "zebra",      "giraffe",       "backpack",      "umbrella",     "handbag",       "tie",
    "suitcase",       "frisbee",    "skis",          "snowboard",     "sports ball",  "kite",          "baseball bat",
    "baseball glove", "skateboard", "surfboard",     "tennis racket", "bottle",       "wine glass",    "cup",
    "fork",           "knife",      "spoon",         "bowl",          "banana",       "apple",         "sandwich",
    "orange",         "broccoli",   "carrot",        "hot dog",       "pizza",        "donut",         "cake",
    "chair",          "couch",      "potted plant",  "bed",           "dining table", "toilet",        "tv",
    "laptop",         "mouse",      "remote",        "keyboard",      "cell phone",   "microwave",     "oven",
    "toaster",        "sink",       "refrigerator",  "book",          "clock",        "vase",          "scissors",
    "teddy bear",     "hair drier", "toothbrush"};

const std::vector<std::vector<unsigned int>> COLORS = {
    {0, 114, 189},   {217, 83, 25},   {237, 177, 32},  {126, 47, 142},  {119, 172, 48},  {77, 190, 238},
    {162, 20, 47},   {76, 76, 76},    {153, 153, 153}, {255, 0, 0},     {255, 128, 0},   {191, 191, 0},
    {0, 255, 0},     {0, 0, 255},     {170, 0, 255},   {85, 85, 0},     {85, 170, 0},    {85, 255, 0},
    {170, 85, 0},    {170, 170, 0},   {170, 255, 0},   {255, 85, 0},    {255, 170, 0},   {255, 255, 0},
    {0, 85, 128},    {0, 170, 128},   {0, 255, 128},   {85, 0, 128},    {85, 85, 128},   {85, 170, 128},
    {85, 255, 128},  {170, 0, 128},   {170, 85, 128},  {170, 170, 128}, {170, 255, 128}, {255, 0, 128},
    {255, 85, 128},  {255, 170, 128}, {255, 255, 128}, {0, 85, 255},    {0, 170, 255},   {0, 255, 255},
    {85, 0, 255},    {85, 85, 255},   {85, 170, 255},  {85, 255, 255},  {170, 0, 255},   {170, 85, 255},
    {170, 170, 255}, {170, 255, 255}, {255, 0, 255},   {255, 85, 255},  {255, 170, 255}, {85, 0, 0},
    {128, 0, 0},     {170, 0, 0},     {212, 0, 0},     {255, 0, 0},     {0, 43, 0},      {0, 85, 0},
    {0, 128, 0},     {0, 170, 0},     {0, 212, 0},     {0, 255, 0},     {0, 0, 43},      {0, 0, 85},
    {0, 0, 128},     {0, 0, 170},     {0, 0, 212},     {0, 0, 255},     {0, 0, 0},       {36, 36, 36},
    {73, 73, 73},    {109, 109, 109}, {146, 146, 146}, {182, 182, 182}, {219, 219, 219}, {0, 114, 189},
    {80, 183, 189},  {128, 128, 0}};


bool isVideo{false};
//static std::shared_ptr<cv_bridge::CvImagePtr>now_ptr=std::make_shared<cv_bridge::CvImagePtr>();

static cv_bridge::CvImagePtr now_ptr;
cv::Mat imgOriginal;
static std::shared_ptr<YOLOv8> yolov8 =std::make_shared<YOLOv8> ("/home/liu/桌面/yolo_opencv_ros_demo/demo01_test/src/demo01_test/model/yolov8x.engine");
cv::Mat res;
cv::Size size_pic = cv::Size{640, 640};
int num_labels=80;
int topk= 100;
float score_thres=0.25f;
float iou_thres=0.65f;

std::vector<Object> objs;
std::mutex mtx;







void Callback(const sensor_msgs::Image::ConstPtr& msg)
{
    //cv_bridge::CvImagePtr cv_ptr;

    try
    {
        
        now_ptr=cv_bridge::toCvCopy(msg,sensor_msgs::image_encodings::BGR8);

    }
    catch(cv_bridge::Exception &e)
    {
        ROS_ERROR("cv_bridge excetion%s",e.what());
        return;
    }


    imgOriginal=now_ptr->image;


    if(!imgOriginal.empty())
    {
        std::lock_guard<std::mutex> lock(mtx);
        objs.clear();
        yolov8->copy_from_Mat(imgOriginal, size_pic);
        auto start = std::chrono::system_clock::now();
        yolov8->infer();
        yolov8->postprocess(objs, score_thres, iou_thres, topk, num_labels);
        auto end = std::chrono::system_clock::now();

        yolov8->draw_objects(imgOriginal, res, objs, CLASS_NAMES, COLORS);
        auto tc = (double)std::chrono::duration_cast<std::chrono::microseconds>(end - start).count() / 1000.;
        ROS_INFO("cost %2.4lf ms",tc);
        //printf("cost %2.4lf ms\n", tc);
        cv::imshow("result", res);
        cv::waitKey(10);
    }
    
}
int main(int argc,char** argv)
{
    ros::init(argc,argv,"image_sub_node");
    ros::NodeHandle nh;
    setlocale(LC_ALL,"");

    cudaSetDevice(0);


    yolov8->make_pipe(true);

    cv::namedWindow("result", cv::WINDOW_AUTOSIZE);

    ros::Subscriber rgc_sub=nh.subscribe("camera/color/image_raw",10,Callback);
    while(ros::ok())
    {
        ros::spinOnce();
    }

    //delete yolov8;
    cv::destroyAllWindows();
    return 0;
}







// static cv_bridge::CvImagePtr now_ptr;
// cv::Mat imgOriginal;



// void Callback(const sensor_msgs::Image msg)
// {
//     //cv_bridge::CvImagePtr cv_ptr;
//     try
//     {
//         now_ptr=cv_bridge::toCvCopy(msg,sensor_msgs::image_encodings::BGR8);

//     }
//     catch(cv_bridge::Exception &e)
//     {
//         ROS_ERROR("cv_bridge excetion%s",e.what());
//         return;
//     }
//     //ROS_INFO("here");
//     imgOriginal=now_ptr->image;
//     if(!imgOriginal.empty())
//     {
//         cv::imshow("RGB",imgOriginal);
//         cv::waitKey(10);
//     }
    
    
// }
// int main(int argc,char** argv)
// {
//     ros::init(argc,argv,"image_sub_node");
//     ros::NodeHandle nh;

//     setlocale(LC_ALL,"");
//     //ros::Rate rate(10);
//     ros::Subscriber rgc_sub=nh.subscribe("camera/color/image_raw",10,Callback);
//     //cv::VideoCapture cap(0);
//     //cv::Mat img;
//     //std::cout<<cv::getVersionString<<endl;
//     while(ros::ok())
//     {
//         //cap>>img;
//         //cv::imshow("live",img);
//         ros::spinOnce();
//     }
//     //ros::spin();

//     return 0;
// }