// #include <iostream>
// #include <vector>
// //#include <getopt.h>

// #include "opencv2/opencv.hpp"

// #include "yolo_inference.h"

// using namespace std;
// using namespace cv;



// // cv::Point rectCenterScale(cv::Rect rect)
// // {
   
// //     cv::Point pt;
// //     pt.x = cvRound(rect.x + rect.width / 2.0);
// //     pt.y = cvRound(rect.height+rect.y / 2.0);
// //     return pt;

// // }

// int main(int argc, char** argv)
// {
//     cv::Rect area(640, 440,540,540);
//     //yolo
//     std::string projectBasePath = "home/liu/桌面/ultralytics-main"; // Set your ultralytics base path

//     bool runOnGPU = false;

//     //
//     // Pass in either:
//     //
//     // "yolov8s.onnx" or "yolov5s.onnx"
//     //
//     // To run Inference with yolov8/yolov5 (ONNX)
//     //

//     // Note that in this example the classes are hard-coded and 'classes.txt' is a place holder.
 
//     Inference inf("yolov8n.onnx", cv::Size(640, 640), "classes.txt", runOnGPU);







  
    
//     //std::vector<std::string> imageNames;
//     //imageNames.push_back("./test.mp4");
//     ////imageNames.push_back(projectBasePath + "/ultralytics/assets/bus.jpg");
//     ////imageNames.push_back(projectBasePath + "/ultralytics/assets/zidane.jpg");

//     //for (int i = 0; i < imageNames.size(); ++i)
//     //{
//     //    cv::Mat frame = cv::imread(imageNames[i]);

//     //    // Inference starts here...
//     //    std::vector<Detection> output = inf.runInference(frame);

//     //    int detections = output.size();
//     //    std::cout << "Number of detections:" << detections << std::endl;

//     //    for (int i = 0; i < detections; ++i)
//     //    {
//     //        Detection detection = output[i];

//     //        cv::Rect box = detection.box;
//     //        cv::Scalar color = detection.color;

//     //        // Detection box
//     //        cv::rectangle(frame, box, color, 2);

//     //        // Detection box text
//     //        std::string classString = detection.className + ' ' + std::to_string(detection.confidence).substr(0, 4);
//     //        cv::Size textSize = cv::getTextSize(classString, cv::FONT_HERSHEY_DUPLEX, 1, 2, 0);
//     //        cv::Rect textBox(box.x, box.y - 40, textSize.width + 10, textSize.height + 20);

//     //        cv::rectangle(frame, textBox, color, cv::FILLED);
//     //        cv::putText(frame, classString, cv::Point(box.x + 5, box.y - 10), cv::FONT_HERSHEY_DUPLEX, 1, cv::Scalar(0, 0, 0), 2, 0);
//     //    }
//     //    // Inference ends here...

//     //    // This is only for preview purposes
//     //    float scale = 0.8;
//     //    cv::resize(frame, frame, cv::Size(frame.cols * scale, frame.rows * scale));
//     //    cv::imshow("Inference", frame);

//     //    cv::waitKey(-1);
//     //}











//     //std::vector<std::string> videoPaths;
//     //videoPaths.push_back("./test.mp4");
//     //ui.status->setText("video path:D:/C++(2019)/data/video_good/test_video.mp4");
  
//     for (int i = 0; i < 1; ++i)
//     {
//         //const std::string& videoPath = videoPaths[i];
//         //cv::VideoCapture videoCapture(videoPath);
//         cv::VideoCapture videoCapture(0);
//         // if (!videoCapture.isOpened())
//         // {
//         //     //ui.status->setText("Failed to open video: ");
//         //     std::cerr << "Failed to open video: " << videoPath << std::endl;
//         //     continue;
//         // }
//         cv::Mat frame;
//         while (videoCapture.read(frame))
//         {
//             // Inference starts here...
//             std::vector<Detection> output = inf.runInference(frame);


//             int detections = output.size();
//             std::cout << "Number of detections: " << detections << std::endl;
//             for (int i = 0; i < detections; ++i)
//             {
//                 Detection detection = output[i];
//                 cv::Rect box = detection.box;
//                 cv::Scalar color = detection.color;


//                 //if (detection.class_id == 0) {
//                 //    color = cv::Scalar(0, 255, 0); // ��ɫ (B, G, R)
//                 //}
//                 //else if (detection.class_id == 1) {
//                 //    color = cv::Scalar(0, 0, 255); // ��ɫ (B, G, R)
//                 //}
//                 //else {
//                 //    color = cv::Scalar(255, 0, 0); // ��ɫ (B, G, R)
//                 //}

       


//                 // if (area.contains(rectCenterScale(detection.box)))
//                 // {
//                 //     color = cv::Scalar(0, 0, 255);
//                 // }
//                 // else
//                 // {
//                 //     color = cv::Scalar(255, 255, 255);
//                 // }
                
//                 // Detection box
//                 cv::rectangle(frame, box, color, 2);
//                 // Detection box text
//                 std::string classString = detection.className + ' ' + std::to_string(detection.confidence).substr(0, 4);
//                 cv::Size textSize = cv::getTextSize(classString, cv::FONT_HERSHEY_DUPLEX, 1, 2, 0);
//                 cv::Rect textBox(box.x, box.y - 40, textSize.width + 10, textSize.height + 20);
//                 cv::rectangle(frame, textBox, color, cv::FILLED);
//                 cv::rectangle(frame, area, cv::Scalar(255, 0, 0));
//                 cv::putText(frame, classString, cv::Point(box.x + 5, box.y - 10), cv::FONT_HERSHEY_DUPLEX, 1, cv::Scalar(0, 0, 0), 2, 0);
//             }
//             cv::namedWindow("Inference", cv::WINDOW_NORMAL); // 
//             cv::imshow("Inference", frame); // 
//             if (cv::waitKey(10) == 27) // Press Esc to exit
//                 break;
//         }
//         cv::destroyAllWindows();
//     }
//     return 0;

// }






















#include <iostream>
#include <vector>
#include <getopt.h>

#include "opencv2/opencv.hpp"

#include "yolo_inference.h"

using namespace std;
using namespace cv;

int main(int argc, char **argv)
{
    static int count=0;
    cv::VideoCapture cap(0);
    cv::Mat img;
    std::string projectBasePath = "/home/liu/桌面/ultralytics-main"; // Set your ultralytics base path
    
    bool runOnGPU = true;

    //
    // Pass in either:
    //
    // "yolov8s.onnx" or "yolov5s.onnx"
    //
    // To run Inference with yolov8/yolov5 (ONNX)
    //

    // Note that in this example the classes are hard-coded and 'classes.txt' is a place holder.
    Inference inf("/home/liu/桌面/ultralytics-main/yolov8x.onnx", cv::Size(640, 640), "classes.txt", runOnGPU);

    std::vector<std::string> imageNames;
    cv::Mat frame;
    //视频流推理
    while(1)
    {
        cap>>frame;
        //frame=img;
        //Interface start here
        std::vector<Detection> output = inf.runInference(frame);
        int detections=output.size();
        std::cout<<"Number of detections:"<<detections<<std::endl;
         for (int i = 0; i < detections; ++i)
        {
            Detection detection = output[i];

            cv::Rect box = detection.box;
            cv::Scalar color = detection.color;
            //cv::Scalar color=cv::Scalar(125,125,125);
            // Detection box
            cv::rectangle(frame, box, color, 2);
            cv::Scalar s1= cv::Scalar(125,125,125);
            // Detection box text
            std::string classString = detection.className + ' ' + std::to_string(detection.confidence).substr(0, 4);
            cv::Size textSize = cv::getTextSize(classString, cv::FONT_HERSHEY_DUPLEX, 1, 2, 0);
            cv::Rect textBox(box.x, box.y - 40, textSize.width + 10, textSize.height + 20);

            cv::rectangle(frame, textBox, color, cv::FILLED);
            cv::putText(frame, classString, cv::Point(box.x + 5, box.y - 10), cv::FONT_HERSHEY_DUPLEX, 1, cv::Scalar(0, 0, 0), 2, 0);
        }
        float scale=0.8;
        cv::resize(frame, frame, cv::Size(frame.cols*scale, frame.rows*scale));
        cv::imshow("Inference", frame);
        if(cv::waitKey(1)=='q')
        {
            break;
        }
    }
    return 0;
    //图片推理
    //imageNames.push_back(projectBasePath + "/ultralytics/assets/bus.jpg");
    //imageNames.push_back(projectBasePath + "/ultralytics/assets/zidane.jpg");
    // for (int i = 0; i < imageNames.size(); ++i)
    // {
    //     cv::Mat frame = cv::imread(imageNames[i]);

    //     // Inference starts here...
    //     std::vector<Detection> output = inf.runInference(frame);

    //     int detections = output.size();
    //     std::cout << "Number of detections:" << detections << std::endl;

    //     for (int i = 0; i < detections; ++i)
    //     {
    //         Detection detection = output[i];

    //         cv::Rect box = detection.box;
    //         cv::Scalar color = detection.color;

    //         // Detection box
    //         cv::rectangle(frame, box, color, 2);

    //         // Detection box text
    //         std::string classString = detection.className + ' ' + std::to_string(detection.confidence).substr(0, 4);
    //         cv::Size textSize = cv::getTextSize(classString, cv::FONT_HERSHEY_DUPLEX, 1, 2, 0);
    //         cv::Rect textBox(box.x, box.y - 40, textSize.width + 10, textSize.height + 20);

    //         cv::rectangle(frame, textBox, color, cv::FILLED);
    //         cv::putText(frame, classString, cv::Point(box.x + 5, box.y - 10), cv::FONT_HERSHEY_DUPLEX, 1, cv::Scalar(0, 0, 0), 2, 0);
    //     }
    //     // Inference ends here...

    //     // This is only for preview purposes
    //     float scale = 0.8;
    //     cv::resize(frame, frame, cv::Size(frame.cols*scale, frame.rows*scale));
    //     cv::imshow("Inference", frame);

    //     cv::waitKey(-1);
    // }








    
}



// int main() {


//     // 打开视频
//     cv::VideoCapture cap(0);
//     if (!cap.isOpened()) {
//         std::cerr << "Error: Could not open video file or stream!" << std::endl;
//         return -1;
//     }

//     // 获取视频信息
//     //double fps = cap.get(cv::CAP_PROP_FPS);
//     //double frameCount = cap.get(cv::CAP_PROP_FRAME_COUNT);
//     //std::cout << "FPS: " << fps << ", Frame Count: " << frameCount << std::endl;

//     // 读取并显示视频帧
//     cv::Mat frame;
//     while (true) {
//         cap >> frame; // 读取一帧
//         if (frame.empty()) {
//             std::cout << "End of video" << std::endl;
//             break;
//         }

//         cv::imshow("Video", frame);
//         if (cv::waitKey(10) == 27) { // 按 ESC 键退出
//             break;
//         }
//     }

//     //cap.release();
//     cv::destroyAllWindows();
//     return 0;
// }


// #include <iostream>
// #include <iomanip>
// #include "inference.h"
// #include <filesystem>
// #include <fstream>
// #include <random>

// void Detector(YOLO_V8*& p) {
//     std::filesystem::path current_path = std::filesystem::current_path();
//     std::filesystem::path imgs_path = current_path / "images";
//     for (auto& i : std::filesystem::directory_iterator(imgs_path))
//     {
//         if (i.path().extension() == ".jpg" || i.path().extension() == ".png" || i.path().extension() == ".jpeg")
//         {
//             std::string img_path = i.path().string();
//             cv::Mat img = cv::imread(img_path);
//             std::vector<DL_RESULT> res;
//             p->RunSession(img, res);

//             for (auto& re : res)
//             {
//                 cv::RNG rng(cv::getTickCount());
//                 cv::Scalar color(rng.uniform(0, 256), rng.uniform(0, 256), rng.uniform(0, 256));

//                 cv::rectangle(img, re.box, color, 3);

//                 float confidence = floor(100 * re.confidence) / 100;
//                 std::cout << std::fixed << std::setprecision(2);
//                 std::string label = p->classes[re.classId] + " " +
//                     std::to_string(confidence).substr(0, std::to_string(confidence).size() - 4);

//                 cv::rectangle(
//                     img,
//                     cv::Point(re.box.x, re.box.y - 25),
//                     cv::Point(re.box.x + label.length() * 15, re.box.y),
//                     color,
//                     cv::FILLED
//                 );

//                 cv::putText(
//                     img,
//                     label,
//                     cv::Point(re.box.x, re.box.y - 5),
//                     cv::FONT_HERSHEY_SIMPLEX,
//                     0.75,
//                     cv::Scalar(0, 0, 0),
//                     2
//                 );


//             }
//             std::cout << "Press any key to exit" << std::endl;
//             cv::imshow("Result of Detection", img);
//             cv::waitKey(0);
//             cv::destroyAllWindows();
//         }
//     }
// }


// void Classifier(YOLO_V8*& p)
// {
//     std::filesystem::path current_path = std::filesystem::current_path();
//     std::filesystem::path imgs_path = current_path;// / "images"
//     std::random_device rd;
//     std::mt19937 gen(rd());
//     std::uniform_int_distribution<int> dis(0, 255);
//     for (auto& i : std::filesystem::directory_iterator(imgs_path))
//     {
//         if (i.path().extension() == ".jpg" || i.path().extension() == ".png")
//         {
//             std::string img_path = i.path().string();
//             //std::cout << img_path << std::endl;
//             cv::Mat img = cv::imread(img_path);
//             std::vector<DL_RESULT> res;
//             char* ret = p->RunSession(img, res);

//             float positionY = 50;
//             for (int i = 0; i < res.size(); i++)
//             {
//                 int r = dis(gen);
//                 int g = dis(gen);
//                 int b = dis(gen);
//                 cv::putText(img, std::to_string(i) + ":", cv::Point(10, positionY), cv::FONT_HERSHEY_SIMPLEX, 1, cv::Scalar(b, g, r), 2);
//                 cv::putText(img, std::to_string(res.at(i).confidence), cv::Point(70, positionY), cv::FONT_HERSHEY_SIMPLEX, 1, cv::Scalar(b, g, r), 2);
//                 positionY += 50;
//             }

//             cv::imshow("TEST_CLS", img);
//             cv::waitKey(0);
//             cv::destroyAllWindows();
//             //cv::imwrite("E:\\output\\" + std::to_string(k) + ".png", img);
//         }

//     }
// }



// int ReadCocoYaml(YOLO_V8*& p) {
//     // Open the YAML file
//     std::ifstream file("coco.yaml");
//     if (!file.is_open())
//     {
//         std::cerr << "Failed to open file" << std::endl;
//         return 1;
//     }

//     // Read the file line by line
//     std::string line;
//     std::vector<std::string> lines;
//     while (std::getline(file, line))
//     {
//         lines.push_back(line);
//     }

//     // Find the start and end of the names section
//     std::size_t start = 0;
//     std::size_t end = 0;
//     for (std::size_t i = 0; i < lines.size(); i++)
//     {
//         if (lines[i].find("names:") != std::string::npos)
//         {
//             start = i + 1;
//         }
//         else if (start > 0 && lines[i].find(':') == std::string::npos)
//         {
//             end = i;
//             break;
//         }
//     }

//     // Extract the names
//     std::vector<std::string> names;
//     for (std::size_t i = start; i < end; i++)
//     {
//         std::stringstream ss(lines[i]);
//         std::string name;
//         std::getline(ss, name, ':'); // Extract the number before the delimiter
//         std::getline(ss, name); // Extract the string after the delimiter
//         names.push_back(name);
//     }

//     p->classes = names;
//     return 0;
// }


// void DetectTest()
// {
//     YOLO_V8* yoloDetector = new YOLO_V8;
//     ReadCocoYaml(yoloDetector);
//     DL_INIT_PARAM params;
//     params.rectConfidenceThreshold = 0.1;
//     params.iouThreshold = 0.5;
//     params.modelPath = "yolov8n.onnx";
//     params.imgSize = { 640, 640 };
// #ifdef USE_CUDA
//     params.cudaEnable = true;

//     // GPU FP32 inference
//     params.modelType = YOLO_DETECT_V8;
//     // GPU FP16 inference
//     //Note: change fp16 onnx model
//     //params.modelType = YOLO_DETECT_V8_HALF;

// #else
//     // CPU inference
//     params.modelType = YOLO_DETECT_V8;
//     params.cudaEnable = false;

// #endif
//     yoloDetector->CreateSession(params);
//     Detector(yoloDetector);
// }


// void ClsTest()
// {
//     YOLO_V8* yoloDetector = new YOLO_V8;
//     std::string model_path = "cls.onnx";
//     ReadCocoYaml(yoloDetector);
//     DL_INIT_PARAM params{ model_path, YOLO_CLS, {224, 224} };
//     yoloDetector->CreateSession(params);
//     Classifier(yoloDetector);
// }


// int main()
// {
//     //DetectTest();
//     ClsTest();
// }