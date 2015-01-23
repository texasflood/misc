#include <time.h>
#include <fstream>
#include <iostream>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <string>
#include <unistd.h>
#include <string.h>
#include <sstream>
#include <raspicam/raspicam_cv.h>

#define BLUECOORD   0
#define BLUEAREA    1
#define REDCOORD    2
#define REDAREA     3
#define GREENCOORD  4
#define GREENAREA   5
#define YELLOWCOORD 6
#define YELLOWAREA  7

using namespace std;
using namespace cv;

raspicam::RaspiCam_Cv Camera;
cv::Mat image;
cv::Mat procImage;
int currentMax = 0;
int currentArea;
int maxPos;
const int areaThreshold = 1000;
double m00;
int centre[2];
bool objectFound = false;
cv::Moments imageMoments;
int lowerHueBlue = 95;
int upperHueBlue = 125;
int lowerHueRed = 167;
int upperHueRed = 5;
int lowerHueGreen = 41;
int upperHueGreen = 88;
int lowerHueYellow = 22;
int upperHueYellow = 37;
int lowerValueBlue = 60;
int lowerValueRed = 57;
int lowerValueGreen = 60;
int lowerValueYellow = 113;
int upperValue = 255;
int lowerSatBlue = 85;
int lowerSatRed = 70;
int lowerSatGreen = 112;
int lowerSatYellow = 142;
int upperSat = 255;
Scalar lowerBlue = Scalar(95, 85, 60);
Scalar upperBlue = Scalar(125, 255, 255);
Scalar lowerRed = Scalar(167, 70, 57);
Scalar upperRed = Scalar(179, 255, 255);
Scalar lowerRed2 = Scalar(0, 70, 57);
Scalar upperRed2 = Scalar(5, 255, 255);
Scalar lowerGreen = Scalar(41, 112, 60);
Scalar upperGreen = Scalar(88, 255, 255);
Scalar lowerYellow = Scalar(22, 142, 113);
Scalar upperYellow = Scalar(37, 255, 255);
vector<vector<cv::Point> > contours;
vector<cv::Vec4i> hierarchy;
string replyString;
string data;
int stringSize;
char key;
cv::Mat blobDetector(cv::Mat image, int flag);

int main () {
	cout << "Enter colour (lowercase)" << endl;
    cin >> data;
    Camera.set(CV_CAP_PROP_FRAME_WIDTH, 640);
    Camera.set(CV_CAP_PROP_FRAME_HEIGHT,480);
    Camera.set(CV_CAP_PROP_SATURATION, 30);
	if ( !Camera.open()) {cerr<<"Error opening camera"<<endl;return -1;}
    namedWindow("Camera_Output", CV_WINDOW_NORMAL); 
    namedWindow("Processed_Output", CV_WINDOW_NORMAL); 
    if (data.compare("blue") == 0)
    {
        createTrackbar("Lower Hue", "Processed_Output", &lowerHueBlue, 179);
        createTrackbar("Upper Hue", "Processed_Output", &upperHueBlue, 179);
        createTrackbar("Lower Sat", "Processed_Output", &lowerSatBlue, 255);
        createTrackbar("Upper Sat", "Processed_Output", &upperSat, 255);
        createTrackbar("Lower Val", "Processed_Output", &lowerValueBlue, 255);
        createTrackbar("Upper Val", "Processed_Output", &upperValue, 255);
    }
    else if (data.compare("red") == 0)
    {
        createTrackbar("Lower Hue", "Processed_Output", &lowerHueRed, 179);
        createTrackbar("Upper Hue", "Processed_Output", &upperHueRed, 179);
        createTrackbar("Lower Sat", "Processed_Output", &lowerSatRed, 255);
        createTrackbar("Upper Sat", "Processed_Output", &upperSat, 255);
        createTrackbar("Lower Val", "Processed_Output", &lowerValueRed, 255);
        createTrackbar("Upper Val", "Processed_Output", &upperValue, 255);
    }
    else if (data.compare("green") == 0)
    {
        createTrackbar("Lower Hue", "Processed_Output", &lowerHueGreen, 179);
        createTrackbar("Upper Hue", "Processed_Output", &upperHueGreen, 179);
        createTrackbar("Lower Sat", "Processed_Output", &lowerSatGreen, 255);
        createTrackbar("Upper Sat", "Processed_Output", &upperSat, 255);
        createTrackbar("Lower Val", "Processed_Output", &lowerValueGreen, 255);
        createTrackbar("Upper Val", "Processed_Output", &upperValue, 255);
    }
    else if (data.compare("yellow") == 0)
    {
        createTrackbar("Lower Hue", "Processed_Output", &lowerHueYellow, 179);
        createTrackbar("Upper Hue", "Processed_Output", &upperHueYellow, 179);
        createTrackbar("Lower Sat", "Processed_Output", &lowerSatYellow, 255);
        createTrackbar("Upper Sat", "Processed_Output", &upperSat, 255);
        createTrackbar("Lower Val", "Processed_Output", &lowerValueYellow, 255);
        createTrackbar("Upper Val", "Processed_Output", &upperValue, 255);
    }
    else
    {
        cout << "invalid option" << endl;
        return -1;
    }
    while (true)
    {
        Camera.grab();
		Camera.retrieve ( image);
        imshow("Camera_Output", image);
        if (data.compare("blue") == 0)
        {
            procImage = blobDetector(image, BLUECOORD);
        }
        else if (data.compare("red") == 0)
        {
            procImage = blobDetector(image, REDCOORD);
        }
        else if (data.compare("green") == 0)
        {
            procImage = blobDetector(image, GREENCOORD);
        }
        else if (data.compare("yellow") == 0)
        {
            procImage = blobDetector(image, YELLOWCOORD);
        }
        imshow("Processed_Output", procImage);
        key = cvWaitKey(10);
    }
    cvDestroyWindow("Camera_Output"); //Destroy Window
    cvDestroyWindow("Processed_Output"); //Destroy Window
    return 0;
}

cv::Mat blobDetector(cv::Mat image, int flag)
{
    currentMax = 0;
    cv::cvtColor(image, image, CV_BGR2HSV);
    if (flag == BLUEAREA || flag == BLUECOORD)
    {
        lowerBlue = Scalar(lowerHueBlue, lowerSatBlue, lowerValueBlue);
        upperBlue = Scalar(upperHueBlue, upperSat, upperValue);
        cv::inRange(image, lowerBlue, upperBlue, image);
    }
    else if (flag == REDAREA || flag == REDCOORD)
    {
        lowerRed = Scalar(lowerHueRed, lowerSatRed, lowerValueRed);
        lowerRed2 = Scalar(0, lowerSatRed, lowerValueRed);
        upperRed = Scalar(179, upperSat, upperValue);
        upperRed2 = Scalar(upperHueRed, upperSat, upperValue);
        cv::Mat image_2;
        cv::inRange(image, lowerRed, upperRed, image_2);
        cv::inRange(image, lowerRed2, upperRed2, image);
        cv::bitwise_or(image, image_2, image);
    }
    else if (flag == GREENAREA || flag == GREENCOORD)
    {
        lowerGreen = Scalar(lowerHueGreen, lowerSatGreen, lowerValueGreen);
        upperGreen = Scalar(upperHueGreen, upperSat, upperValue);
        cv::inRange(image, lowerGreen, upperGreen, image);
    }
    else if (flag == YELLOWAREA || flag == YELLOWCOORD)
    {
        lowerYellow = Scalar(lowerHueYellow, lowerSatYellow, lowerValueYellow);
        upperYellow = Scalar(upperHueYellow, upperSat, upperValue);
        cv::inRange(image, lowerYellow, upperYellow, image);
    }
    cv::Mat image2;
    image2 = image.clone();
    cv::findContours(image2, contours, hierarchy, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE);
    for (int i = 0; i < contours.size(); i++)
    {
        currentArea = cv::contourArea(contours[i], false);
        if (currentArea > currentMax)
        {
            currentMax = currentArea;
            maxPos = i;
        }
    }
    
    if (currentMax > areaThreshold)
    {
        imageMoments = cv::moments(contours[maxPos], true);
        m00 = imageMoments.m00;
        if (m00 == 0)
        {
            objectFound = false;
        }
        else
        {
            centre[0] = (int) (imageMoments.m10)/m00;
            centre[1] = (int) (imageMoments.m01)/m00;
            objectFound = true;
        }
        
    }
    else
    {
        objectFound = false;
    }

    if (!objectFound)
    {
        return image;
    }
    else
    {
        cvtColor(image, image, CV_GRAY2BGR);
        drawContours(image, contours, maxPos, cv::Scalar(123, 20, 200), 8);
        circle(image, Point(centre[0], centre[1]), 12, cv::Scalar(200, 20, 100), -1);
        return image;
    }
}

