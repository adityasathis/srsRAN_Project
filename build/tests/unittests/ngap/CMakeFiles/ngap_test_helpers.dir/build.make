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
include tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/progress.make

# Include the compile flags for this target's objects.
include tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/flags.make

tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.o: tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/flags.make
tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.o: ../tests/unittests/ngap/ngap_test_helpers.cpp
tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.o: tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.o"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ngap && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.o -MF CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.o.d -o CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.o -c /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/ngap/ngap_test_helpers.cpp

tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.i"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ngap && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/ngap/ngap_test_helpers.cpp > CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.i

tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.s"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ngap && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/ngap/ngap_test_helpers.cpp -o CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.s

tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.o: tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/flags.make
tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.o: ../tests/unittests/ngap/ngap_test_messages.cpp
tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.o: tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.o"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ngap && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.o -MF CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.o.d -o CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.o -c /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/ngap/ngap_test_messages.cpp

tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.i"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ngap && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/ngap/ngap_test_messages.cpp > CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.i

tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.s"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ngap && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/ngap/ngap_test_messages.cpp -o CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.s

# Object files for target ngap_test_helpers
ngap_test_helpers_OBJECTS = \
"CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.o" \
"CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.o"

# External object files for target ngap_test_helpers
ngap_test_helpers_EXTERNAL_OBJECTS =

tests/unittests/ngap/libngap_test_helpers.a: tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_helpers.cpp.o
tests/unittests/ngap/libngap_test_helpers.a: tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/ngap_test_messages.cpp.o
tests/unittests/ngap/libngap_test_helpers.a: tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/build.make
tests/unittests/ngap/libngap_test_helpers.a: tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libngap_test_helpers.a"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ngap && $(CMAKE_COMMAND) -P CMakeFiles/ngap_test_helpers.dir/cmake_clean_target.cmake
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ngap && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ngap_test_helpers.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/build: tests/unittests/ngap/libngap_test_helpers.a
.PHONY : tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/build

tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/clean:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ngap && $(CMAKE_COMMAND) -P CMakeFiles/ngap_test_helpers.dir/cmake_clean.cmake
.PHONY : tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/clean

tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/depend:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/ngap /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ngap /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/unittests/ngap/CMakeFiles/ngap_test_helpers.dir/depend

