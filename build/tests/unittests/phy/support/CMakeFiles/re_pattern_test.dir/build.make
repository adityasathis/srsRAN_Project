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
include tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/flags.make

tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.o: tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/flags.make
tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.o: ../tests/unittests/phy/support/re_pattern_test.cpp
tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.o: tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.o"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/support && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.o -MF CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.o.d -o CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.o -c /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/phy/support/re_pattern_test.cpp

tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.i"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/support && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/phy/support/re_pattern_test.cpp > CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.i

tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.s"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/support && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/phy/support/re_pattern_test.cpp -o CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.s

# Object files for target re_pattern_test
re_pattern_test_OBJECTS = \
"CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.o"

# External object files for target re_pattern_test
re_pattern_test_EXTERNAL_OBJECTS =

tests/unittests/phy/support/re_pattern_test: tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/re_pattern_test.cpp.o
tests/unittests/phy/support/re_pattern_test: tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/build.make
tests/unittests/phy/support/re_pattern_test: lib/phy/support/libsrsran_phy_support.a
tests/unittests/phy/support/re_pattern_test: lib/srslog/libsrslog.a
tests/unittests/phy/support/re_pattern_test: lib/srsvec/libsrsvec.a
tests/unittests/phy/support/re_pattern_test: lib/srslog/libsrslog.a
tests/unittests/phy/support/re_pattern_test: external/fmt/libfmt.a
tests/unittests/phy/support/re_pattern_test: tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable re_pattern_test"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/support && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/re_pattern_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/build: tests/unittests/phy/support/re_pattern_test
.PHONY : tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/build

tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/clean:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/support && $(CMAKE_COMMAND) -P CMakeFiles/re_pattern_test.dir/cmake_clean.cmake
.PHONY : tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/clean

tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/depend:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/phy/support /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/support /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/unittests/phy/support/CMakeFiles/re_pattern_test.dir/depend

