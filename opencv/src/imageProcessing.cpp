#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>

int main (void) {
  cv::Mat img;
  img = cv::imread ("/home/anas/img.jpg", CV_LOAD_IMAGE_COLOR);
  cv::Scalar means = cv::mean(img);
  for (int i = 0; i < 100000; ++i) {
    std::cout << means << std::endl;
  }
  return 0;
}
