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
include tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/progress.make

# Include the compile flags for this target's objects.
include tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/flags.make

tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.o: tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/flags.make
tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.o: ../tests/unittests/scheduler/uci_and_pucch/uci_test_utils.cpp
tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.o: tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.o"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/scheduler/test_utils && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.o -MF CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.o.d -o CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.o -c /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/scheduler/uci_and_pucch/uci_test_utils.cpp

tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.i"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/scheduler/test_utils && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/scheduler/uci_and_pucch/uci_test_utils.cpp > CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.i

tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.s"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/scheduler/test_utils && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/scheduler/uci_and_pucch/uci_test_utils.cpp -o CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.s

# Object files for target uci_test_utils
uci_test_utils_OBJECTS = \
"CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.o"

# External object files for target uci_test_utils
uci_test_utils_EXTERNAL_OBJECTS =

tests/unittests/scheduler/test_utils/libuci_test_utils.a: tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/__/uci_and_pucch/uci_test_utils.cpp.o
tests/unittests/scheduler/test_utils/libuci_test_utils.a: tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/build.make
tests/unittests/scheduler/test_utils/libuci_test_utils.a: tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libuci_test_utils.a"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/scheduler/test_utils && $(CMAKE_COMMAND) -P CMakeFiles/uci_test_utils.dir/cmake_clean_target.cmake
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/scheduler/test_utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uci_test_utils.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/build: tests/unittests/scheduler/test_utils/libuci_test_utils.a
.PHONY : tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/build

tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/clean:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/scheduler/test_utils && $(CMAKE_COMMAND) -P CMakeFiles/uci_test_utils.dir/cmake_clean.cmake
.PHONY : tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/clean

tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/depend:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/scheduler/test_utils /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/scheduler/test_utils /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/unittests/scheduler/test_utils/CMakeFiles/uci_test_utils.dir/depend

