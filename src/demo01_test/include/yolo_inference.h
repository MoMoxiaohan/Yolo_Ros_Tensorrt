#ifndef INFERENCE_H
#define INFERENCE_H

// Cpp native
#include <fstream>
#include <vector>
#include <string>
#include <random>

// OpenCV / DNN / Inference
#include "opencv2/imgproc.hpp"
#include "opencv2/opencv.hpp"
#include "opencv2/dnn.hpp"

struct Detection
{
    int class_id{0};
    std::string className{};
    float confidence{0.0};
    cv::Scalar color{};
    cv::Rect box{};
};

class Inference
{
public:
    Inference(const std::string &onnxModelPath, const cv::Size &modelInputShape = {640, 640}, const std::string &classesTxtFile = "", const bool &runWithCuda = true);
    std::vector<Detection> runInference(const cv::Mat &input);

private:
    void loadClassesFromFile();
    void loadOnnxNetwork();
    cv::Mat formatToSquare(const cv::Mat &source);

    std::string modelPath{};
    std::string classesPath{};
    bool cudaEnabled{};

    std::vector<std::string> classes{"person", "bicycle", "car", "motorcycle", "airplane", "bus", "train", "truck", "boat", "traffic light", "fire hydrant", "stop sign", "parking meter", "bench", "bird", "cat", "dog", "horse", "sheep", "cow", "elephant", "bear", "zebra", "giraffe", "backpack", "umbrella", "handbag", "tie", "suitcase", "frisbee", "skis", "snowboard", "sports ball", "kite", "baseball bat", "baseball glove", "skateboard", "surfboard", "tennis racket", "bottle", "wine glass", "cup", "fork", "knife", "spoon", "bowl", "banana", "apple", "sandwich", "orange", "broccoli", "carrot", "hot dog", "pizza", "donut", "cake", "chair", "couch", "potted plant", "bed", "dining table", "toilet", "tv", "laptop", "mouse", "remote", "keyboard", "cell phone", "microwave", "oven", "toaster", "sink", "refrigerator", "book", "clock", "vase", "scissors", "teddy bear", "hair drier", "toothbrush"};

    cv::Size2f modelShape{};

    float modelConfidenceThreshold {0.25};
    float modelScoreThreshold      {0.45};
    float modelNMSThreshold        {0.50};

    bool letterBoxForSquare = true;

    cv::dnn::Net net;
};

#endif // INFERENCE_H



// #pragma once

// #define    RET_OK nullptr

// #ifdef _WIN32
// #include <Windows.h>
// #include <direct.h>
// #include <io.h>
// #endif

// #include <string>
// #include <vector>
// #include <cstdio>
// #include <opencv2/opencv.hpp>
// #include "onnxruntime_cxx_api.h"

// #ifdef USE_CUDA
// #include <cuda_fp16.h>
// #endif


// enum MODEL_TYPE
// {
//     //FLOAT32 MODEL
//     YOLO_DETECT_V8 = 1,
//     YOLO_POSE = 2,
//     YOLO_CLS = 3,

//     //FLOAT16 MODEL
//     YOLO_DETECT_V8_HALF = 4,
//     YOLO_POSE_V8_HALF = 5,
//     YOLO_CLS_HALF = 6
// };


// typedef struct _DL_INIT_PARAM
// {
//     std::string modelPath;
//     MODEL_TYPE modelType = YOLO_DETECT_V8;
//     std::vector<int> imgSize = { 640, 640 };
//     float rectConfidenceThreshold = 0.6;
//     float iouThreshold = 0.5;
//     int	keyPointsNum = 2;//Note:kpt number for pose
//     bool cudaEnable = false;
//     int logSeverityLevel = 3;
//     int intraOpNumThreads = 1;
// } DL_INIT_PARAM;


// typedef struct _DL_RESULT
// {
//     int classId;
//     float confidence;
//     cv::Rect box;
//     std::vector<cv::Point2f> keyPoints;
// } DL_RESULT;


// class YOLO_V8
// {
// public:
//     YOLO_V8();

//     ~YOLO_V8();

// public:
//     char* CreateSession(DL_INIT_PARAM& iParams);

//     char* RunSession(cv::Mat& iImg, std::vector<DL_RESULT>& oResult);

//     char* WarmUpSession();

//     template<typename N>
//     char* TensorProcess(clock_t& starttime_1, cv::Mat& iImg, N& blob, std::vector<int64_t>& inputNodeDims,
//         std::vector<DL_RESULT>& oResult);

//     char* PreProcess(cv::Mat& iImg, std::vector<int> iImgSize, cv::Mat& oImg);

//     std::vector<std::string> classes{};

// private:
//     Ort::Env env;
//     Ort::Session* session;
//     bool cudaEnable;
//     Ort::RunOptions options;
//     std::vector<const char*> inputNodeNames;
//     std::vector<const char*> outputNodeNames;

//     MODEL_TYPE modelType;
//     std::vector<int> imgSize;
//     float rectConfidenceThreshold;
//     float iouThreshold;
//     float resizeScales;//letterbox scale
// };
