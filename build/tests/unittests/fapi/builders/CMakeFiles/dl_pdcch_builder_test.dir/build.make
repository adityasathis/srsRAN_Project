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
include tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/flags.make

tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.o: tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/flags.make
tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.o: ../tests/unittests/fapi/builders/dl_pdcch_pdu_test.cpp
tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.o: tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.o"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.o -MF CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.o.d -o CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.o -c /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi/builders/dl_pdcch_pdu_test.cpp

tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.i"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi/builders/dl_pdcch_pdu_test.cpp > CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.i

tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.s"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi/builders/dl_pdcch_pdu_test.cpp -o CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.s

# Object files for target dl_pdcch_builder_test
dl_pdcch_builder_test_OBJECTS = \
"CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.o"

# External object files for target dl_pdcch_builder_test
dl_pdcch_builder_test_EXTERNAL_OBJECTS =

tests/unittests/fapi/builders/dl_pdcch_builder_test: tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/dl_pdcch_pdu_test.cpp.o
tests/unittests/fapi/builders/dl_pdcch_builder_test: tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/build.make
tests/unittests/fapi/builders/dl_pdcch_builder_test: lib/support/libsrsran_support.a
tests/unittests/fapi/builders/dl_pdcch_builder_test: lib/srslog/libsrslog.a
tests/unittests/fapi/builders/dl_pdcch_builder_test: lib/support/network/libsrsran_network.a
tests/unittests/fapi/builders/dl_pdcch_builder_test: lib/srslog/libsrslog.a
tests/unittests/fapi/builders/dl_pdcch_builder_test: external/fmt/libfmt.a
tests/unittests/fapi/builders/dl_pdcch_builder_test: /usr/lib/x86_64-linux-gnu/libyaml-cpp.so
tests/unittests/fapi/builders/dl_pdcch_builder_test: tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dl_pdcch_builder_test"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dl_pdcch_builder_test.dir/link.txt --verbose=$(VERBOSE)
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders && /usr/bin/cmake -D TEST_TARGET=dl_pdcch_builder_test -D TEST_EXECUTABLE=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders/dl_pdcch_builder_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=dl_pdcch_builder_test_TESTS -D CTEST_FILE=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders/dl_pdcch_builder_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=15 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.22/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/build: tests/unittests/fapi/builders/dl_pdcch_builder_test
.PHONY : tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/build

tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/clean:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders && $(CMAKE_COMMAND) -P CMakeFiles/dl_pdcch_builder_test.dir/cmake_clean.cmake
.PHONY : tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/clean

tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/depend:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi/builders /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/unittests/fapi/builders/CMakeFiles/dl_pdcch_builder_test.dir/depend

