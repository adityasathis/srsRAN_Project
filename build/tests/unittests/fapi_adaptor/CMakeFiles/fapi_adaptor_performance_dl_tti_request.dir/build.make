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
include tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/progress.make

# Include the compile flags for this target's objects.
include tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/flags.make

tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.o: tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/flags.make
tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.o: ../tests/unittests/fapi_adaptor/adaptor_performance_dl_tti_request.cpp
tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.o: tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.o"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.o -MF CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.o.d -o CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.o -c /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor/adaptor_performance_dl_tti_request.cpp

tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.i"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor/adaptor_performance_dl_tti_request.cpp > CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.i

tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.s"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor/adaptor_performance_dl_tti_request.cpp -o CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.s

# Object files for target fapi_adaptor_performance_dl_tti_request
fapi_adaptor_performance_dl_tti_request_OBJECTS = \
"CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.o"

# External object files for target fapi_adaptor_performance_dl_tti_request
fapi_adaptor_performance_dl_tti_request_EXTERNAL_OBJECTS =

tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request: tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/adaptor_performance_dl_tti_request.cpp.o
tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request: tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/build.make
tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request: lib/fapi_adaptor/phy/messages/libsrsran_fapi_phy_message_adaptors.a
tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request: lib/fapi_adaptor/mac/messages/libsrsran_mac_fapi_adaptors.a
tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request: lib/srslog/libsrslog.a
tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request: lib/phy/support/libsrsran_phy_support.a
tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request: lib/srsvec/libsrsvec.a
tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request: lib/phy/upper/libsrsran_upper_phy_support.a
tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request: lib/fapi_adaptor/libsrsran_fapi_precoding_matrix_tools.a
tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request: lib/ran/libsrsran_ran.a
tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request: lib/srslog/libsrslog.a
tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request: external/fmt/libfmt.a
tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request: tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fapi_adaptor_performance_dl_tti_request"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/build: tests/unittests/fapi_adaptor/fapi_adaptor_performance_dl_tti_request
.PHONY : tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/build

tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/clean:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor && $(CMAKE_COMMAND) -P CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/cmake_clean.cmake
.PHONY : tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/clean

tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/depend:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/unittests/fapi_adaptor/CMakeFiles/fapi_adaptor_performance_dl_tti_request.dir/depend

