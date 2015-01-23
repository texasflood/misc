#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <sstream>
#include <string>
#include <stdlib.h>
#include <time.h>
#include <raspicam/raspicam_cv.h>

using namespace cv;
using namespace std;

void mySobel(Mat& source, Mat& dest);
void findAndDrawContours(Mat& source, Mat& dest, int thickness = 10, Scalar colour = Scalar(255, 255, 255));
void orientRectangle(vector<Point2i> approx);
string convertInt(int number);
void recogniseNumber(vector<Point2i>& foundNumber);

raspicam::RaspiCam_Cv Camera;
vector<Mat> imageQueue;
vector<String> windowNames;
vector<vector<Point> > contours;
vector<vector<Point> > finalContours;
vector<Vec4i> hierarchy;
const int threshold1 = 50;
const int areaThreshold = 100;
const int upAreaThreshold = 270000;
int currentArea;
int currentMax;
int currentMaxPos;
int leftHeight, rightHeight, topWidth, bottomWidth;
float leftOverRight, topOverBot;
vector<Point2i> approxSingle;
vector<vector<Point2i> > approxFiltered;
vector<Point2f> origNo;
vector<Point2f> transformedNo;
const int outputHeight = 480;
const int outputWidth = 308;
Mat number = Mat::zeros(outputHeight, outputWidth, CV_8U);
Mat transmtx;
Mat grayImage;
Mat imageCopy;
Point2i topLeft, topRight, bottomLeft, bottomRight;
clock_t myClock;
bool endNow = false;
bool foundNo;
vector<vector<Point2i> > numbersTemp;
vector<vector<Point2i> > numbers;
string fileName;
int main(int argc, char** argv)
{
	Mat image;
	Camera.set(CV_CAP_PROP_FRAME_WIDTH, 640);
    Camera.set(CV_CAP_PROP_FRAME_HEIGHT,480);
	if ( !Camera.open()) {cerr<<"Error opening camera"<<endl;return -1;}
	transformedNo.push_back(Point2i(0, 0)); transformedNo.push_back(Point2i(outputWidth, 0)); 
	transformedNo.push_back(Point2i(outputWidth, outputHeight)); transformedNo.push_back(Point2i(0, outputHeight));
	Mat templates;
	//namedWindow("Output", CV_WINDOW_NORMAL);
	//namedWindow("Number", CV_WINDOW_NORMAL);
	while (!endNow)
	{
		myClock = clock();
		for (int counter = 0; counter < 300; counter++)
		{
			cout << "Finding number" << endl;
			Camera.grab();
			Camera.retrieve ( image);
			imageCopy = image.clone();
			foundNo = false;
			approxFiltered.clear();
			cvtColor(image, image, CV_BGR2GRAY);
			grayImage = image.clone();
			mySobel(image, image);
			threshold(image, image, threshold1, 255, THRESH_BINARY);
			//findAndDrawContours(image, image, 7, Scalar(255));
			findContours(image, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE);
			for (int i = 0; i < contours.size(); i++)
			{
				currentArea = contourArea(contours[i]);
				if (currentArea > areaThreshold && currentArea < upAreaThreshold && hierarchy[i][2] != -1 && hierarchy[i][3] != -1)
				{
					approxPolyDP(Mat(contours[i]), approxSingle, arcLength(Mat(contours[i]), true)*0.012, true);
					if (approxSingle.size() == 4 && isContourConvex(Mat(approxSingle)))
					{
						approxFiltered.push_back(approxSingle);
					}
				}
			}

			currentMax = 0;
			currentMaxPos = 0;
			for (int i = 0; i < approxFiltered.size(); i++)
			{
				currentArea = contourArea(approxFiltered[i]);
				if (currentMax < currentArea)
				{
					currentMax = currentArea;
					currentMaxPos = i;
				}
			}

			if (approxFiltered.size() > 0)
			{
				orientRectangle(approxFiltered[currentMaxPos]);
				/*topWidth = topRight.x - topLeft.x + abs(topRight.y - topLeft.y);
				bottomWidth = bottomRight.x - bottomLeft.x + abs(bottomRight.y - bottomLeft.y);
				leftHeight = bottomLeft.y - topLeft.y + abs(topLeft.x - bottomLeft.x);
				rightHeight = bottomRight.y - topRight.y + abs(topRight.x - bottomRight.x);*/
				if (true)//topWidth > 70 && bottomWidth > 70 && leftHeight > 70 && rightHeight > 70)
				{
					line(imageCopy, topLeft, topRight, Scalar(0, 0, 255), 5);
					line(imageCopy, topRight, bottomRight, Scalar(0, 255, 0), 5);
					line(imageCopy, bottomRight, bottomLeft, Scalar(255, 0, 0), 5);
					line(imageCopy, bottomLeft, topLeft, Scalar(0, 255, 255), 5);
					//drawContours(imageCopy, approxFiltered, currentMaxPos, Scalar(0, 255, 0), 13, 8);
					origNo.clear();
					origNo.push_back(topLeft); origNo.push_back(topRight); origNo.push_back(bottomRight); origNo.push_back(bottomLeft);
					transmtx = getPerspectiveTransform(origNo, transformedNo);
					warpPerspective(grayImage, number, transmtx, number.size());
					threshold(number, number, mean(number)[0]-40, 255, THRESH_BINARY_INV);
					foundNo = true;
				}
			}
			if (foundNo)
			{
                cout << "foundno" << endl;
				findContours(number, contours, CV_RETR_LIST, CV_CHAIN_APPROX_SIMPLE);
				finalContours.clear();
				//this can be put into a single loop! change!
				for (int i = 0; i < contours.size(); i++)
				{
					currentArea = contourArea(contours[i]);
					if (currentArea < 72000 && currentArea > 4000)
					{
						finalContours.push_back(contours[i]);
					}
				}
				currentMax = 0;
				currentMaxPos = 0;
				for (int i = 0; i < finalContours.size(); i++)
				{
					currentArea = contourArea(finalContours[i]);
					cout << "Area of shape is: " << currentArea << endl;
					if (currentMax > currentArea)
					{
						currentMax = currentArea;
						currentMaxPos = i;
					}
				}
				number.setTo(Scalar(0));
				drawContours(number, finalContours, currentMaxPos, Scalar(255), -1);
				//imshow("Number", number);
				waitKey(0);
				imwrite("/home/pi/BotsForKids/Project/OpenCV/templates/0.bmp", number);
			}
			else
			{
				number = Mat::zeros(outputHeight, outputWidth, CV_8U);
				//imshow("Number", number);
			}
			//imshow("Output", imageCopy);	
		}
		myClock = clock() - myClock;
		cout << "Time taken for 30 frames = " << myClock << " clicks, " << ((float)myClock)/CLOCKS_PER_SEC << " seconds." << endl;
	}
	return 0;
}

void mySobel(Mat& source, Mat& dest)
{
	Mat gradX, gradY;
	Sobel(source, gradX, CV_16S, 1, 0, 3, 1, 0, BORDER_DEFAULT);
	Sobel(source, gradY, CV_16S, 0, 1, 3, 1, 0, BORDER_DEFAULT);
	convertScaleAbs( gradX, gradX );
	convertScaleAbs( gradY, gradY );
	addWeighted( gradX, 0.5, gradY, 0.5, 0, dest );
}

void findAndDrawContours(Mat& source, Mat& dest, int thickness/* = 10*/, Scalar colour/* = Scalar(255, 255, 255)*/)
{
	/***CHANGES SOURCE!****/
	vector<vector<Point> > funcContours;
	int area;
	findContours(source, funcContours, CV_RETR_LIST, CV_CHAIN_APPROX_SIMPLE);
	dest.setTo(Scalar(0));

	for (int i = 0; i < funcContours.size(); i++)
	{
		area = contourArea(funcContours[i]);
		if (area > areaThreshold && area < upAreaThreshold)
		{
			drawContours(source, funcContours, i, colour, thickness);
		}
	}
}

string convertInt(int number)
{
	stringstream ss;
	ss << number;
	return ss.str();
}

void orientRectangle(vector<Point2i> approx)
{
	int currentMaxY = approx[0].y;
	int currentMaxYPos = 0;
	for (int j = 1; j < 4; j++)
	{
		if (approx[j].y > currentMaxY)
		{
			currentMaxY = approx[j].y;
			currentMaxYPos = j;
		}
	}
	int current2ndMaxY;
	int current2ndMaxYPos;
	if (currentMaxYPos == 0)
	{
		current2ndMaxY = approx[1].y;
		current2ndMaxYPos = 1;

		for (int j = 2; j < 4; j++)
		{
			if (approx[j].y > current2ndMaxY)
			{
				current2ndMaxY = approx[j].y;
				current2ndMaxYPos = j;
			}
		}
	}
	else
	{
		current2ndMaxY = approx[0].y;
		current2ndMaxYPos = 0;

		for (int j = 1; j < 4; j++)
		{
			if (approx[j].y > current2ndMaxY && j != currentMaxYPos)
			{
				current2ndMaxY = approx[j].y;
				current2ndMaxYPos = j;
			}
		}
	}


	if (approx[currentMaxYPos].x > approx[current2ndMaxYPos].x)
	{
		bottomRight = approx[currentMaxYPos];
		bottomLeft = approx[current2ndMaxYPos];
	}
	else
	{
		bottomRight = approx[current2ndMaxYPos];
		bottomLeft = approx[currentMaxYPos];
	}

	int currentMinYPos;
	int current2ndMinYPos;
	bool foundCurrentMinYPos = false;

	for (int j = 0; j < 4; j++)
	{
		if (j != currentMaxYPos && j != current2ndMaxYPos)
		{
			if (!foundCurrentMinYPos)
			{
				currentMinYPos = j;
				foundCurrentMinYPos = true;
			}
			else
			{
				current2ndMinYPos = j;
			}
		}
	}

	if (approx[currentMinYPos].x > approx[current2ndMinYPos].x)
	{
		topRight = approx[currentMinYPos];
		topLeft = approx[current2ndMinYPos];
	}
	else
	{
		topRight = approx[current2ndMinYPos];
		topLeft = approx[currentMinYPos];
	}
}

void recogniseNumber(vector<Point2i>& foundNumber)
{
	double match[9];
	for (int i = 0; i < 9; i++)
	{
		match[i] = matchShapes(foundNumber, numbers[i], CV_CONTOURS_MATCH_I3, 0);
	}
	
	double currentMin = match[0];
	int currentMinPos = 0;
	for (int i = 1; i < 9; i++)
	{
		if (match[i] < currentMin)
		{
			currentMin = match[i];
			currentMinPos = i;
		}
	}
	if (currentMin < 0.2)
	{
		cout << "The certainty is " << currentMin << endl;
		cout << "The number might be " << currentMinPos << endl;
	}
	return;
}
