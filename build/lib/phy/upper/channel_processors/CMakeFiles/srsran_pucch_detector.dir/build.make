# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build

# Include any dependencies generated for this target.
include lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/progress.make

# Include the compile flags for this target's objects.
include lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/flags.make

lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.o: lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/flags.make
lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.o: ../lib/phy/upper/channel_processors/pucch_detector_impl.cpp
lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.o: lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.o"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/lib/phy/upper/channel_processors && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.o -MF CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.o.d -o CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.o -c /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/lib/phy/upper/channel_processors/pucch_detector_impl.cpp

lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.i"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/lib/phy/upper/channel_processors && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/lib/phy/upper/channel_processors/pucch_detector_impl.cpp > CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.i

lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.s"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/lib/phy/upper/channel_processors && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/lib/phy/upper/channel_processors/pucch_detector_impl.cpp -o CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.s

# Object files for target srsran_pucch_detector
srsran_pucch_detector_OBJECTS = \
"CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.o"

# External object files for target srsran_pucch_detector
srsran_pucch_detector_EXTERNAL_OBJECTS =

lib/phy/upper/channel_processors/libsrsran_pucch_detector.a: lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/pucch_detector_impl.cpp.o
lib/phy/upper/channel_processors/libsrsran_pucch_detector.a: lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/build.make
lib/phy/upper/channel_processors/libsrsran_pucch_detector.a: lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsrsran_pucch_detector.a"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/lib/phy/upper/channel_processors && $(CMAKE_COMMAND) -P CMakeFiles/srsran_pucch_detector.dir/cmake_clean_target.cmake
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/lib/phy/upper/channel_processors && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/srsran_pucch_detector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/build: lib/phy/upper/channel_processors/libsrsran_pucch_detector.a
.PHONY : lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/build

lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/clean:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/lib/phy/upper/channel_processors && $(CMAKE_COMMAND) -P CMakeFiles/srsran_pucch_detector.dir/cmake_clean.cmake
.PHONY : lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/clean

lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/depend:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/lib/phy/upper/channel_processors /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/lib/phy/upper/channel_processors /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/phy/upper/channel_processors/CMakeFiles/srsran_pucch_detector.dir/depend

