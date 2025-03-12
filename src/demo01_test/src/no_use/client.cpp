#include"ros/ros.h"
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <stdio.h>	
#include <stdlib.h>
#include<iostream>
#include "opencv2/opencv.hpp"

const int PORT = 5678;          //端口号
const char *IP = "127.0.0.1"; //IP地址
struct sockaddr_in server_addr;        //定义服务端的地址结构体

const int Width = 640;  //图片的宽
const int Heigth = 480; //图片的高

void SendImage(const cv::Mat &mat, int sockfd);

void InitAddr();

int main(int argc,char** argv)
{
    ros::init(argc,argv,"client");
    ros::NodeHandle nh;
    int sockfd = socket(AF_INET, SOCK_STREAM, 0); //TCP通信
    if (sockfd == -1)
    {
        perror("socket errno");
        exit(EXIT_FAILURE);
    }
    InitAddr();
    //std::cout<<"socket success"<<std::endl;
    int ret = connect(sockfd,(struct sockaddr *)&server_addr,sizeof(server_addr));
    if(ret == -1)
    {
        perror("connect error");
        exit(1);
    }
    std::cout<<"connect succedd"<<std::endl;
    cv::Mat Srcimage;
    cv::Mat image;
    cv::VideoCapture cap("/home/liu/视频/1.mp4");
    while(1)
    {
        cap>>Srcimage;
        cv::resize(Srcimage,image,cv::Size(Width,Heigth));
        SendImage(image,sockfd);
		cv::waitKey(10);
    }



    close(sockfd);
    return 0;
}

void InitAddr()
{
    //std::cout<<"Initing"<<std::endl;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(PORT);
    //需要将服务器端的IP地址进行转换
    int ret = inet_pton(AF_INET, IP, &server_addr.sin_addr.s_addr);
    if (ret == -1)
    {
        perror("inet_pton error");
        exit(EXIT_FAILURE);
    }

}

void SendImage(const cv::Mat &mat, int sockfd)
{
    int ret = send (sockfd, mat.data, mat.cols * mat.rows, MSG_NOSIGNAL );
    if(ret == -1)
    {
        perror("send error");
        exit(EXIT_FAILURE);
    }
}
