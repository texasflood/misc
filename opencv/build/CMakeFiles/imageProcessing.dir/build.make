# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anas/development/misc/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anas/development/misc/opencv/build

# Include any dependencies generated for this target.
include CMakeFiles/imageProcessing.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/imageProcessing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/imageProcessing.dir/flags.make

CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o: CMakeFiles/imageProcessing.dir/flags.make
CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o: ../src/imageProcessing.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/anas/development/misc/opencv/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o -c /home/anas/development/misc/opencv/src/imageProcessing.cpp

CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/anas/development/misc/opencv/src/imageProcessing.cpp > CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.i

CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/anas/development/misc/opencv/src/imageProcessing.cpp -o CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.s

CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o.requires:
.PHONY : CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o.requires

CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o.provides: CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o.requires
	$(MAKE) -f CMakeFiles/imageProcessing.dir/build.make CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o.provides.build
.PHONY : CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o.provides

CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o.provides.build: CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o

# Object files for target imageProcessing
imageProcessing_OBJECTS = \
"CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o"

# External object files for target imageProcessing
imageProcessing_EXTERNAL_OBJECTS =

imageProcessing: CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o
imageProcessing: CMakeFiles/imageProcessing.dir/build.make
imageProcessing: /usr/local/lib/libopencv_videostab.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_videoio.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_video.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_ts.a
imageProcessing: /usr/local/lib/libopencv_superres.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_stitching.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_shape.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_photo.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_objdetect.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_ml.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_imgproc.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_highgui.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_flann.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_features2d.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_core.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_calib3d.so.3.0.0
imageProcessing: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
imageProcessing: /usr/local/lib/libopencv_features2d.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_ml.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_highgui.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_videoio.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_flann.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_video.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_imgproc.so.3.0.0
imageProcessing: /usr/local/lib/libopencv_core.so.3.0.0
imageProcessing: CMakeFiles/imageProcessing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable imageProcessing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imageProcessing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/imageProcessing.dir/build: imageProcessing
.PHONY : CMakeFiles/imageProcessing.dir/build

CMakeFiles/imageProcessing.dir/requires: CMakeFiles/imageProcessing.dir/src/imageProcessing.cpp.o.requires
.PHONY : CMakeFiles/imageProcessing.dir/requires

CMakeFiles/imageProcessing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/imageProcessing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/imageProcessing.dir/clean

CMakeFiles/imageProcessing.dir/depend:
	cd /home/anas/development/misc/opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anas/development/misc/opencv /home/anas/development/misc/opencv /home/anas/development/misc/opencv/build /home/anas/development/misc/opencv/build /home/anas/development/misc/opencv/build/CMakeFiles/imageProcessing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/imageProcessing.dir/depend
