cmake_minimum_required(VERSION 2.8)
project( contourFilling )
find_package( OpenCV REQUIRED )
add_executable( contourFilling contourFilling.cpp )
target_link_libraries( contourFilling ${OpenCV_LIBS} )
