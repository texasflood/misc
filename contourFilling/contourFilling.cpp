#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>

using namespace cv;
using namespace std;

void printInnerContours (int contourPos, Mat &filled, vector<vector<Point2i > > &contours, vector<Vec4i> &hierarchy, int area);

int main()
{
    int areaThresh;
    vector<vector<Point2i > > contours;
	vector<Vec4i> hierarchy;
    
    Mat text = imread ("../wHWHA.jpg", 0); //write greyscale
    threshold (text, text, 50, 255, THRESH_BINARY);
    imwrite ("../text1.jpg", text);
    areaThresh = (0.01 * text.rows * text.cols) / 100;
    findContours (text, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_NONE);
    Mat filled = Mat::zeros(text.rows, text.cols, CV_8U);

    cout << "here" << endl;
    cout << contours.size() << endl;
    for (int i = 0; i < contours.size(); i++)
    {
        int area = contourArea(contours[i]);
        if (area > areaThresh)
        {
            if ((hierarchy[i][2] != -1) && (hierarchy[i][3] == -1))
            {

                drawContours (filled, contours, i, 255, -1);
                if (hierarchy[i][2] != -1)
                {
                    printInnerContours (hierarchy[i][2], filled, contours, hierarchy, area);
                }
            }
        }
    }
    imwrite("../output.jpg", filled);

    return 0;
}

void printInnerContours (int contourPos, Mat &filled, vector<vector<Point2i > > &contours, vector<Vec4i> &hierarchy, int area)
{
    int areaFrac = 5;

    if (((contourArea (contours[contourPos]) * 100) / area) < areaFrac)
    {
        //drawContours (filled, contours, contourPos, 0, -1);
    }
    if (hierarchy[contourPos][2] != -1)
    {
        printInnerContours (hierarchy[contourPos][2], filled, contours, hierarchy, area);
    }

    if (hierarchy[contourPos][0] != -1)
    {
        printInnerContours (hierarchy[contourPos][0], filled, contours, hierarchy, area);
    }
}
