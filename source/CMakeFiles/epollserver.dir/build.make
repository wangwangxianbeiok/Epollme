# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /root/Epollme/source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Epollme/source

# Include any dependencies generated for this target.
include CMakeFiles/epollserver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/epollserver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/epollserver.dir/flags.make

CMakeFiles/epollserver.dir/main.cpp.o: CMakeFiles/epollserver.dir/flags.make
CMakeFiles/epollserver.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Epollme/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/epollserver.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/epollserver.dir/main.cpp.o -c /root/Epollme/source/main.cpp

CMakeFiles/epollserver.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epollserver.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Epollme/source/main.cpp > CMakeFiles/epollserver.dir/main.cpp.i

CMakeFiles/epollserver.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epollserver.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Epollme/source/main.cpp -o CMakeFiles/epollserver.dir/main.cpp.s

CMakeFiles/epollserver.dir/Epollme.cpp.o: CMakeFiles/epollserver.dir/flags.make
CMakeFiles/epollserver.dir/Epollme.cpp.o: Epollme.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Epollme/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/epollserver.dir/Epollme.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/epollserver.dir/Epollme.cpp.o -c /root/Epollme/source/Epollme.cpp

CMakeFiles/epollserver.dir/Epollme.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epollserver.dir/Epollme.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Epollme/source/Epollme.cpp > CMakeFiles/epollserver.dir/Epollme.cpp.i

CMakeFiles/epollserver.dir/Epollme.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epollserver.dir/Epollme.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Epollme/source/Epollme.cpp -o CMakeFiles/epollserver.dir/Epollme.cpp.s

CMakeFiles/epollserver.dir/Server.cpp.o: CMakeFiles/epollserver.dir/flags.make
CMakeFiles/epollserver.dir/Server.cpp.o: Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Epollme/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/epollserver.dir/Server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/epollserver.dir/Server.cpp.o -c /root/Epollme/source/Server.cpp

CMakeFiles/epollserver.dir/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epollserver.dir/Server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Epollme/source/Server.cpp > CMakeFiles/epollserver.dir/Server.cpp.i

CMakeFiles/epollserver.dir/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epollserver.dir/Server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Epollme/source/Server.cpp -o CMakeFiles/epollserver.dir/Server.cpp.s

# Object files for target epollserver
epollserver_OBJECTS = \
"CMakeFiles/epollserver.dir/main.cpp.o" \
"CMakeFiles/epollserver.dir/Epollme.cpp.o" \
"CMakeFiles/epollserver.dir/Server.cpp.o"

# External object files for target epollserver
epollserver_EXTERNAL_OBJECTS =

epollserver: CMakeFiles/epollserver.dir/main.cpp.o
epollserver: CMakeFiles/epollserver.dir/Epollme.cpp.o
epollserver: CMakeFiles/epollserver.dir/Server.cpp.o
epollserver: CMakeFiles/epollserver.dir/build.make
epollserver: CMakeFiles/epollserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/Epollme/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable epollserver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/epollserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/epollserver.dir/build: epollserver

.PHONY : CMakeFiles/epollserver.dir/build

CMakeFiles/epollserver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/epollserver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/epollserver.dir/clean

CMakeFiles/epollserver.dir/depend:
	cd /root/Epollme/source && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Epollme/source /root/Epollme/source /root/Epollme/source /root/Epollme/source /root/Epollme/source/CMakeFiles/epollserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/epollserver.dir/depend

