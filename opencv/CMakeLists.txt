cmake_minimum_required (VERSION 2.8) 
project (imageProcessing)
SET(CMAKE_MODULE_PATH ${CMAKE_INSTALL_PREFIX}/lib/cmake/ )
find_package(OpenCV)

add_executable (imageProcessing "src/imageProcessing.cpp")  
target_link_libraries (imageProcessing ${OpenCV_LIBS} "-lopencv_core -lopencv_highgui")

