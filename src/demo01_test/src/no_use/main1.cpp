#include"opencv2/opencv.hpp"
#include<iostream>
using namespace std;
int main()
{
    cv::Mat img;
    cv::namedWindow("live",cv::WINDOW_NORMAL);
    cv::VideoCapture cap(0);
    if(!cap.isOpened())
    {
        cout<<"gg";
        return -1;
    }
    cap>>img;
    while (1)
    {
        
        cv::imshow("live",img);
        if(cv::waitKey(1)=='a')
        {
            break;
        }
    }
    return 0;
    

}