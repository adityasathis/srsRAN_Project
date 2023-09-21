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
include tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/progress.make

# Include the compile flags for this target's objects.
include tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/flags.make

tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.o: tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/flags.make
tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.o: ../tests/unittests/ran/pdcch/pdcch_candidates_ue_test.cpp
tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.o: tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.o"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ran && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.o -MF CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.o.d -o CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.o -c /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/ran/pdcch/pdcch_candidates_ue_test.cpp

tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.i"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ran && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/ran/pdcch/pdcch_candidates_ue_test.cpp > CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.i

tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.s"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ran && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/ran/pdcch/pdcch_candidates_ue_test.cpp -o CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.s

# Object files for target pdcch_candidates_ue
pdcch_candidates_ue_OBJECTS = \
"CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.o"

# External object files for target pdcch_candidates_ue
pdcch_candidates_ue_EXTERNAL_OBJECTS =

tests/unittests/ran/pdcch_candidates_ue: tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/pdcch/pdcch_candidates_ue_test.cpp.o
tests/unittests/ran/pdcch_candidates_ue: tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/build.make
tests/unittests/ran/pdcch_candidates_ue: lib/support/libsrsran_support.a
tests/unittests/ran/pdcch_candidates_ue: lib/ran/libsrsran_ran.a
tests/unittests/ran/pdcch_candidates_ue: lib/support/network/libsrsran_network.a
tests/unittests/ran/pdcch_candidates_ue: /usr/lib/x86_64-linux-gnu/libyaml-cpp.so
tests/unittests/ran/pdcch_candidates_ue: lib/srslog/libsrslog.a
tests/unittests/ran/pdcch_candidates_ue: external/fmt/libfmt.a
tests/unittests/ran/pdcch_candidates_ue: tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pdcch_candidates_ue"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ran && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pdcch_candidates_ue.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/build: tests/unittests/ran/pdcch_candidates_ue
.PHONY : tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/build

tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/clean:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ran && $(CMAKE_COMMAND) -P CMakeFiles/pdcch_candidates_ue.dir/cmake_clean.cmake
.PHONY : tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/clean

tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/depend:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/ran /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ran /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/unittests/ran/CMakeFiles/pdcch_candidates_ue.dir/depend

