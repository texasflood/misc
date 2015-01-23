cmake_minimum_required (VERSION 2.8) 
project (colourTester)
SET(CMAKE_MODULE_PATH ${CMAKE_INSTALL_PREFIX}/lib/cmake/ )
#find_package(raspicam)
find_package(OpenCV)

add_executable (colourTester colourTester.cpp)  
#target_link_libraries (perspective ${raspicam_CV_LIBS} "-lzmq")
target_link_libraries (colourTester ${OpenCV_LIBS} ${raspicam_CV_LIBS} "-lzmq -L /opt/vc/lib/ -I /usr/local/include/ -lraspicam -lraspicam_cv -lmmal -lmmal_core -lmmal_util -lopencv_core -lopencv_highgui")
