# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/student/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/student/catkin_ws/build

# Include any dependencies generated for this target.
include joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/depend.make

# Include the progress variables for this target.
include joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/progress.make

# Include the compile flags for this target's objects.
include joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/flags.make

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o: joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/flags.make
joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o: /home/student/catkin_ws/src/joystick_drivers/wiimote/src/wiimote_controller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/student/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o"
	cd /home/student/catkin_ws/build/joystick_drivers/wiimote && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o -c /home/student/catkin_ws/src/joystick_drivers/wiimote/src/wiimote_controller.cpp

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.i"
	cd /home/student/catkin_ws/build/joystick_drivers/wiimote && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/student/catkin_ws/src/joystick_drivers/wiimote/src/wiimote_controller.cpp > CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.i

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.s"
	cd /home/student/catkin_ws/build/joystick_drivers/wiimote && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/student/catkin_ws/src/joystick_drivers/wiimote/src/wiimote_controller.cpp -o CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.s

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o.requires:

.PHONY : joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o.requires

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o.provides: joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o.requires
	$(MAKE) -f joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/build.make joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o.provides.build
.PHONY : joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o.provides

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o.provides.build: joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o


joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o: joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/flags.make
joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o: /home/student/catkin_ws/src/joystick_drivers/wiimote/src/stat_vector_3d.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/student/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o"
	cd /home/student/catkin_ws/build/joystick_drivers/wiimote && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o -c /home/student/catkin_ws/src/joystick_drivers/wiimote/src/stat_vector_3d.cpp

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.i"
	cd /home/student/catkin_ws/build/joystick_drivers/wiimote && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/student/catkin_ws/src/joystick_drivers/wiimote/src/stat_vector_3d.cpp > CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.i

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.s"
	cd /home/student/catkin_ws/build/joystick_drivers/wiimote && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/student/catkin_ws/src/joystick_drivers/wiimote/src/stat_vector_3d.cpp -o CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.s

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o.requires:

.PHONY : joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o.requires

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o.provides: joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o.requires
	$(MAKE) -f joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/build.make joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o.provides.build
.PHONY : joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o.provides

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o.provides.build: joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o


# Object files for target wiimote_node
wiimote_node_OBJECTS = \
"CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o" \
"CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o"

# External object files for target wiimote_node
wiimote_node_EXTERNAL_OBJECTS =

/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/build.make
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /opt/ros/kinetic/lib/libroscpp.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /opt/ros/kinetic/lib/librosconsole.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /opt/ros/kinetic/lib/librostime.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /opt/ros/kinetic/lib/libcpp_common.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /opt/ros/kinetic/lib/libroslib.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /opt/ros/kinetic/lib/librospack.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/student/catkin_ws/devel/lib/wiimote/wiimote_node: joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/student/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/student/catkin_ws/devel/lib/wiimote/wiimote_node"
	cd /home/student/catkin_ws/build/joystick_drivers/wiimote && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wiimote_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/build: /home/student/catkin_ws/devel/lib/wiimote/wiimote_node

.PHONY : joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/build

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/requires: joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/wiimote_controller.cpp.o.requires
joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/requires: joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/src/stat_vector_3d.cpp.o.requires

.PHONY : joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/requires

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/clean:
	cd /home/student/catkin_ws/build/joystick_drivers/wiimote && $(CMAKE_COMMAND) -P CMakeFiles/wiimote_node.dir/cmake_clean.cmake
.PHONY : joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/clean

joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/depend:
	cd /home/student/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/student/catkin_ws/src /home/student/catkin_ws/src/joystick_drivers/wiimote /home/student/catkin_ws/build /home/student/catkin_ws/build/joystick_drivers/wiimote /home/student/catkin_ws/build/joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : joystick_drivers/wiimote/CMakeFiles/wiimote_node.dir/depend

