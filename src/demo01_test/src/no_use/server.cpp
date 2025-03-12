		// ///server.c
		// #include <sys/types.h>
		// #include <sys/socket.h>
		// #include <stdio.h>
		// #include <stdlib.h>
		// #include <errno.h>
		// #include <string.h>
		// #include <unistd.h>
		// #include <netinet/in.h>
		// #define PORT 4321
		// #define BUFFER_SIZE 1024
		// #define MAX 5
		// #include <pthread.h>
		// int main()
		// {
		//     struct sockaddr_in servaddr;
		//     int sockfd,client_fd;
		//     char buf[BUFFER_SIZE];
		// 	char sendbuf[] = "received data";
		// 	/*建立socket连接*/
		//     if((sockfd=socket(AF_INET,SOCK_STREAM,0))==-1)
		//     {
		//         perror("socket");
		//         exit(1);
		//     }

		//     printf("socket id=%d\n",sockfd);
		// 	/*设置sockaddr_in结构体中相关参数*/
		//     bzero(&servaddr,sizeof(servaddr));
		//     servaddr.sin_family=AF_INET;
		//     servaddr.sin_port=htons(PORT);
		//     servaddr.sin_addr.s_addr=INADDR_ANY;
		//     int i=1;  /*允许重复使用本地址与套接字进行绑定*/
		//     setsockopt(sockfd,SOL_SOCKET,SO_REUSEADDR,&i,sizeof(i));

		// 	/*绑定函数bind()*/
		//     if(bind(sockfd,(struct sockaddr *) &servaddr,sizeof(servaddr))==-1)
		//     {
		//         perror("bind");
		//         exit(1);
		//     }
		//     printf("Bind success!\n");
		// 	/*调用listen函数，创建未处理请求的队列*/
		//     if(listen(sockfd,MAX)==-1)
		//     {
		//         perror("listen");
		//         exit(1);
		//     }

		//     printf("Listen...\n");

		// 	/*调用accept函数，等待客户端连接*/
		//     if((client_fd=accept(sockfd,NULL,NULL))==-1)
		//     {
		//         perror("accept");
		//         exit(0);
		//     }

		// 	while(1)
		// 	{
		// 		if(recv(client_fd,buf,BUFFER_SIZE,0)==-1)
		// 		{
		// 		    perror("recv");
		// 		    exit(0);
		// 		}
		// 		else
		// 		{
		// 			printf("Received a message:%s\n",buf);
		// 			memset(buf,0,sizeof(buf));
		// 			if(send(client_fd,sendbuf,strlen(sendbuf),0)==-1)
		// 			{
		// 				perror("send");
		// 				exit(-1);
		// 			}
		// 			memset(buf,0,sizeof(buf));
		// 		}
		// 	}
		//     close(sockfd);
		//     exit(0);
		// }
#include"ros/ros.h"
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include "opencv2/opencv.hpp"
#include "../include/yolov8.hpp"
#include <chrono>
#include <errno.h>
#include <string.h>
#include <netdb.h>
#include <sys/types.h>
#include<arpa/inet.h>
#define BUFFER_SIZE 100
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
const int PORT = 5678;                //端口号
//const char *IP = "192.168.3.6";       //IP地址
struct sockaddr_in server_addr, client_addr; //定义服务端和客户端的地址结构体

const int Width = 640;  //图片的宽
const int Heigth = 480; //图片的高
cv::Mat GetImage(int sockfd);
void InitAddr(int sokckfd);
//int len;
///char buf[BUFFER_SIZE];






int main(int argc, char **argv)
{
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"server");
    ros::NodeHandle nh;
	cv::namedWindow("live",cv::WINDOW_NORMAL);
    char client_IP[1024];
    //创建套接字
    int sockfd = socket(AF_INET, SOCK_STREAM, 0); //TCP传输
    if (sockfd == -1)
    {
        perror("socket error");
        exit(EXIT_FAILURE);
    }
    InitAddr(sockfd); //初始化地址，并将地址结构体绑定到套接字上
	bzero(&client_addr, sizeof(client_addr));
    socklen_t client_len = sizeof(client_addr);
    std::cout<<"wait"<<std::endl;
    int connectfd = accept(sockfd, (struct sockaddr *)&client_addr, &client_len);
    if (connectfd == -1)
    {
        perror("accept errno");
        exit(1);
    }
        //打印客户端的IP地址和端口号
    printf("client ip:%s port:%d\n",
    inet_ntop(AF_INET, &client_addr.sin_addr.s_addr, client_IP, 1024),
    ntohs(client_addr.sin_port));
    //阻塞等待客户端的连接请求

    int count=0;
    cudaSetDevice(0);
    const std::string engine_file_path{"./yolov8x.engine"};
    //const std::string p="./data/bus.jpg";
    //const std::string engine_file_path{argv[1]};
    //const fs::path    path1{argv[2]};

    std::vector<std::string> imagePathList;
    bool                     isVideo{false};

    auto yolov8 = new YOLOv8("/home/liu/桌面/YOLOv8-TensorRT-main/csrc/detect/normal/yolov8x.engine");
    yolov8->make_pipe(true);




    cv::Mat             res, image;
    cv::Size            size = cv::Size{640, 640};
    int      num_labels  = 80;
    int      topk        = 100;
    float    score_thres = 0.25f;
    float    iou_thres   = 0.65f;

    std::vector<Object> objs;

    //cv::namedWindow("result", cv::WINDOW_AUTOSIZE);


    cv::VideoCapture cap1("/home/liu/视频/1.mp4");
    //cv::VideoCapture cap1(0);
    cv::Mat fal;
    cv::namedWindow("result",cv::WINDOW_NORMAL);
    while (true)
    {
        cap1>>image;
        //获取图像
        fal = GetImage(connectfd);
        cv::Rect rec(0,0,image.cols,image.rows);
        cv::imshow("1",fal);

        //image=image(rec);
        std::string str="Now there are";
        objs.clear();
        yolov8->copy_from_Mat(image, size);
        auto start = std::chrono::system_clock::now();
        yolov8->infer();
        auto end = std::chrono::system_clock::now();
        yolov8->postprocess(objs, score_thres, iou_thres, topk, num_labels);
        yolov8->draw_objects(image, res, objs, CLASS_NAMES, COLORS);
        auto tc = (double)std::chrono::duration_cast<std::chrono::microseconds>(end - start).count() / 1000.;
        count=0;
        for (const auto& obj : objs)
        {
            if (CLASS_NAMES[obj.label] == "person")
            {
                    count++;
            }
        }
        printf("cost %2.4lf ms\n", tc);
        str+=std::to_string(count);
        str+="people around!";
        cv::putText(res,str,cv::Point(50,50),cv::FONT_HERSHEY_PLAIN,2,cv::Scalar(0,255,255),1,8);
        cv::imshow("result", res);
        //此时就可以读取connectfd中的数据
        //cv::imshow("1",fal);
		//cv::imshow("live",image);
		//cv::waitKey(0);
		if(cv::waitKey(10)=='q')
		{
			std::cout<<"end"<<std::endl;
			break;
		}
        //保存图片
        //cv::imwrite("../Get/image.jpg", image);
    }
    //close(sockfd);
	exit(0);
    // cv::destroyAllWindows();
    delete yolov8;
    return 0;
}






void InitAddr(int sockfd)
{
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(PORT);
    server_addr.sin_addr.s_addr = htonl(INADDR_ANY);

    //设置端口复用
    int opt = 1;
    setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));

    int ret = bind(sockfd, (struct sockaddr *)&server_addr, sizeof(server_addr));
    if (ret == -1)
    {
        perror("bind errno");
        exit(1);
    }
    //std::cout<<"bind success"<<std::endl;

    ret = listen(sockfd, 10);
    if (ret == -1)
    {
        perror("listen errno");
        exit(1);
    }
    //std::cout<<"listen success"<<std::endl;
}


cv::Mat GetImage(int connectfd)
{
    // cv::Mat mat = cv::Mat::zeros(Heigth, Width, CV_8UC3);
    // const int imgSize = mat.total() * mat.elemSize();
    // uchar bufferData[imgSize*2];
    // int bytes = 0;
    // int i = 0;
    // for (i = 0; i < imgSize; i += bytes)
    // {
    //     bytes = recv(connectfd, bufferData + i, imgSize - i, 0);
    //     if (bytes == -1)
    //     {
    //         std::cout << "status == -1   errno == " << errno << "  in Socket::recv\n";
    //         exit(EXIT_FAILURE);
    //     }
    // }
    // // std::cout << "recv " << i << "bytes" << std::endl;
    // mat = cv::Mat(Heigth, Width, CV_8UC1, bufferData);
    // return mat;
	cv::Mat mat = cv::Mat::zeros(Heigth, Width, CV_8UC3);
    const int imgSize = mat.total() * mat.elemSize();
    uchar bufferData[imgSize];
    int bytes = 0;
    int i = 0;
    for (i = 0; i < imgSize; i += bytes)
    {
        bytes = recv(connectfd, bufferData + i, imgSize - i, 0);
        if (bytes == -1)
        {
            std::cout << "status == -1   errno == " << errno << "  in Socket::recv\n";
            exit(EXIT_FAILURE);
        }
    }

    cv::MatIterator_<cv::Vec3b> it = mat.begin<cv::Vec3b>();
    cv::MatIterator_<cv::Vec3b> end = mat.end<cv::Vec3b>();

    for (int i = 0; i < imgSize; i += 3)
    {
        (*it)[0] = bufferData[i];     // R通道赋值
        (*it)[1] = bufferData[i + 1]; // G通道赋值
        (*it)[2] = bufferData[i + 2]; // B通道赋值
        ++it;
    }
	return mat;
}




// int main(int argc, char** argv)
// {

// //     if (argc != 3) {
// //         fprintf(stderr, "Usage: %s [engine_path] [image_path/image_dir/video_path]\n", argv[0]);
// //         return -1;
// //     }

//     //cuda:0
//     //TCP CONSTS
//     int sockfd,client_fd;

// 	struct sockaddr_in servaddr;
//     /*创建socket*/
// 	if((sockfd=socket(AF_INET,SOCK_STREAM,0))==-1)
// 	{
// 		perror("socket");
// 		exit(-1);
// 	}
// 	else
// 	{
// 		printf("socket build success\r\n");
// 	}
//     /*创建sockaddr_in结构体中相关参数*/
// 	bzero(&servaddr,sizeof(servaddr));
// 	servaddr.sin_family=AF_INET;
// 	servaddr.sin_port = htons(4321);


//     // 设置IP地址为127.0.0.1
//     servaddr.sin_addr.s_addr = inet_addr("127.0.0.1");

// 	/*调用connect函数主动发起对服务端的链接*/
// 	if(connect(sockfd,(struct sockaddr *) &servaddr,sizeof(servaddr))==-1)
// 	{
// 		perror("connect");
// 		exit(-1);
// 	}



//     while (1) {
//             //YOLO_DETECT

//         }



//     return 0;
// }
 // cv::VideoCapture cap(2);
    // cv::Mat img;
    // while(1)
    // {
    //     cap>>img;
    //     cv::imshow("live",img);
    //     cv::waitKey(1);
    // }


