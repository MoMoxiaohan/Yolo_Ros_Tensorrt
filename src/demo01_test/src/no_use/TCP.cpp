#include <iostream>
#include <opencv2/opencv.hpp>  // 这里仅用于示例获取图像数据，你可以替换为其他获取图像数据的方式
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <string.h>

// 假设图像尺寸，根据实际情况修改
const int WIDTH = 640;
const int HEIGHT = 480;

bool sendData(int socket, const char* data, int size) {
    int totalSent = 0;
    while (totalSent < size) {
        int bytesSent = send(socket, data + totalSent, size - totalSent, 0);
        if (bytesSent == -1) {
            std::cerr << "发送数据失败" << std::endl;
            return false;
        }
        totalSent += bytesSent;
    }
    return true;
}

int main() {
    // 创建套接字
    int clientSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (clientSocket == -1) {
        std::cerr << "创建套接字失败" << std::endl;
        return -1;
    }

    // 服务器地址结构体
    struct sockaddr_in serverAddr;
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_port = htons(5678);  // 端口号
    serverAddr.sin_addr.s_addr = inet_addr("192.168.71.247");  // 服务器IP地址

    // 连接服务器
    if (connect(clientSocket, (struct sockaddr*)&serverAddr, sizeof(serverAddr)) == -1) {
        std::cerr << "连接服务器失败" << std::endl;
        close(clientSocket);
        return -1;
    }

    // 获取图像数据（这里使用OpenCV示例获取，实际可替换为VideoCapture获取的图像数据）
    cv::Mat image = cv::Mat::zeros(HEIGHT, WIDTH, CV_8UC3);  // 创建一个空白图像
    // 可替换为实际获取图像的逻辑，例如从摄像头捕获等

    // 发送图像数据大小
    int imageSize = image.total() * image.elemSize();
    if (!sendData(clientSocket, reinterpret_cast<char*>(&imageSize), sizeof(imageSize))) {
        close(clientSocket);
        return -1;
    }

    // 发送图像数据
    if (!sendData(clientSocket, reinterpret_cast<char*>(image.data), imageSize)) {
        close(clientSocket);
        return -1;
    }

    // 发送int类型变量
    int a = 10;
    if (!sendData(clientSocket, reinterpret_cast<char*>(&a), sizeof(a))) {
        close(clientSocket);
        return -1;
    }

    // 关闭套接字
    close(clientSocket);

    return 0;
}
