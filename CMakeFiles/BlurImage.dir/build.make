# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.8.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.8.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/alexvallorosi/Desktop/proj2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/alexvallorosi/Desktop/proj2

# Include any dependencies generated for this target.
include CMakeFiles/blurimage.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/blurimage.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/blurimage.dir/flags.make

CMakeFiles/blurimage.dir/blurimage.cpp.o: CMakeFiles/blurimage.dir/flags.make
CMakeFiles/blurimage.dir/blurimage.cpp.o: blurimage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/alexvallorosi/Desktop/proj2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/blurimage.dir/blurimage.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/blurimage.dir/blurimage.cpp.o -c /Users/alexvallorosi/Desktop/proj2/blurimage.cpp

CMakeFiles/blurimage.dir/blurimage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blurimage.dir/blurimage.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alexvallorosi/Desktop/proj2/blurimage.cpp > CMakeFiles/blurimage.dir/blurimage.cpp.i

CMakeFiles/blurimage.dir/blurimage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blurimage.dir/blurimage.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alexvallorosi/Desktop/proj2/blurimage.cpp -o CMakeFiles/blurimage.dir/blurimage.cpp.s

CMakeFiles/blurimage.dir/blurimage.cpp.o.requires:

.PHONY : CMakeFiles/blurimage.dir/blurimage.cpp.o.requires

CMakeFiles/blurimage.dir/blurimage.cpp.o.provides: CMakeFiles/blurimage.dir/blurimage.cpp.o.requires
	$(MAKE) -f CMakeFiles/blurimage.dir/build.make CMakeFiles/blurimage.dir/blurimage.cpp.o.provides.build
.PHONY : CMakeFiles/blurimage.dir/blurimage.cpp.o.provides

CMakeFiles/blurimage.dir/blurimage.cpp.o.provides.build: CMakeFiles/blurimage.dir/blurimage.cpp.o


# Object files for target blurimage
blurimage_OBJECTS = \
"CMakeFiles/blurimage.dir/blurimage.cpp.o"

# External object files for target blurimage
blurimage_EXTERNAL_OBJECTS =

blurimage: CMakeFiles/blurimage.dir/blurimage.cpp.o
blurimage: CMakeFiles/blurimage.dir/build.make
blurimage: /usr/local/lib/libopencv_shape.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_stitching.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_superres.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_videostab.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_objdetect.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_calib3d.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_features2d.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_flann.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_highgui.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_ml.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_photo.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_video.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_videoio.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_imgcodecs.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_imgproc.3.2.0.dylib
blurimage: /usr/local/lib/libopencv_core.3.2.0.dylib
blurimage: CMakeFiles/blurimage.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/alexvallorosi/Desktop/proj2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable blurimage"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/blurimage.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/blurimage.dir/build: blurimage

.PHONY : CMakeFiles/blurimage.dir/build

CMakeFiles/blurimage.dir/requires: CMakeFiles/blurimage.dir/blurimage.cpp.o.requires

.PHONY : CMakeFiles/blurimage.dir/requires

CMakeFiles/blurimage.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/blurimage.dir/cmake_clean.cmake
.PHONY : CMakeFiles/blurimage.dir/clean

CMakeFiles/blurimage.dir/depend:
	cd /Users/alexvallorosi/Desktop/proj2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/alexvallorosi/Desktop/proj2 /Users/alexvallorosi/Desktop/proj2 /Users/alexvallorosi/Desktop/proj2 /Users/alexvallorosi/Desktop/proj2 /Users/alexvallorosi/Desktop/proj2/CMakeFiles/blurimage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/blurimage.dir/depend

