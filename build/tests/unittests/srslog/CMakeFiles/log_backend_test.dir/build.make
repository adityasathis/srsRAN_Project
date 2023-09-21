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
include tests/unittests/srslog/CMakeFiles/log_backend_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/unittests/srslog/CMakeFiles/log_backend_test.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/unittests/srslog/CMakeFiles/log_backend_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/unittests/srslog/CMakeFiles/log_backend_test.dir/flags.make

tests/unittests/srslog/CMakeFiles/log_backend_test.dir/log_backend_test.cpp.o: tests/unittests/srslog/CMakeFiles/log_backend_test.dir/flags.make
tests/unittests/srslog/CMakeFiles/log_backend_test.dir/log_backend_test.cpp.o: ../tests/unittests/srslog/log_backend_test.cpp
tests/unittests/srslog/CMakeFiles/log_backend_test.dir/log_backend_test.cpp.o: tests/unittests/srslog/CMakeFiles/log_backend_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/unittests/srslog/CMakeFiles/log_backend_test.dir/log_backend_test.cpp.o"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/srslog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/unittests/srslog/CMakeFiles/log_backend_test.dir/log_backend_test.cpp.o -MF CMakeFiles/log_backend_test.dir/log_backend_test.cpp.o.d -o CMakeFiles/log_backend_test.dir/log_backend_test.cpp.o -c /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/srslog/log_backend_test.cpp

tests/unittests/srslog/CMakeFiles/log_backend_test.dir/log_backend_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/log_backend_test.dir/log_backend_test.cpp.i"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/srslog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/srslog/log_backend_test.cpp > CMakeFiles/log_backend_test.dir/log_backend_test.cpp.i

tests/unittests/srslog/CMakeFiles/log_backend_test.dir/log_backend_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/log_backend_test.dir/log_backend_test.cpp.s"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/srslog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/srslog/log_backend_test.cpp -o CMakeFiles/log_backend_test.dir/log_backend_test.cpp.s

# Object files for target log_backend_test
log_backend_test_OBJECTS = \
"CMakeFiles/log_backend_test.dir/log_backend_test.cpp.o"

# External object files for target log_backend_test
log_backend_test_EXTERNAL_OBJECTS =

tests/unittests/srslog/log_backend_test: tests/unittests/srslog/CMakeFiles/log_backend_test.dir/log_backend_test.cpp.o
tests/unittests/srslog/log_backend_test: tests/unittests/srslog/CMakeFiles/log_backend_test.dir/build.make
tests/unittests/srslog/log_backend_test: lib/srslog/libsrslog.a
tests/unittests/srslog/log_backend_test: external/fmt/libfmt.a
tests/unittests/srslog/log_backend_test: tests/unittests/srslog/CMakeFiles/log_backend_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable log_backend_test"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/srslog && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/log_backend_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/unittests/srslog/CMakeFiles/log_backend_test.dir/build: tests/unittests/srslog/log_backend_test
.PHONY : tests/unittests/srslog/CMakeFiles/log_backend_test.dir/build

tests/unittests/srslog/CMakeFiles/log_backend_test.dir/clean:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/srslog && $(CMAKE_COMMAND) -P CMakeFiles/log_backend_test.dir/cmake_clean.cmake
.PHONY : tests/unittests/srslog/CMakeFiles/log_backend_test.dir/clean

tests/unittests/srslog/CMakeFiles/log_backend_test.dir/depend:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/srslog /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/srslog /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/srslog/CMakeFiles/log_backend_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/unittests/srslog/CMakeFiles/log_backend_test.dir/depend

