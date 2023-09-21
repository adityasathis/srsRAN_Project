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
include tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/flags.make

tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.o: tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/flags.make
tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.o: ../tests/integrationtests/ngap/ngap_integration_test.cpp
tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.o: tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.o"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/integrationtests/ngap && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.o -MF CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.o.d -o CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.o -c /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/integrationtests/ngap/ngap_integration_test.cpp

tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.i"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/integrationtests/ngap && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/integrationtests/ngap/ngap_integration_test.cpp > CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.i

tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.s"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/integrationtests/ngap && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/integrationtests/ngap/ngap_integration_test.cpp -o CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.s

# Object files for target ngap_integration_test
ngap_integration_test_OBJECTS = \
"CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.o"

# External object files for target ngap_integration_test
ngap_integration_test_EXTERNAL_OBJECTS =

tests/integrationtests/ngap/ngap_integration_test: tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/ngap_integration_test.cpp.o
tests/integrationtests/ngap/ngap_integration_test: tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/build.make
tests/integrationtests/ngap/ngap_integration_test: lib/srslog/libsrslog.a
tests/integrationtests/ngap/ngap_integration_test: lib/support/network/libsrsran_network.a
tests/integrationtests/ngap/ngap_integration_test: lib/ngap/libsrsran_ngap.a
tests/integrationtests/ngap/ngap_integration_test: lib/asn1/libngap_asn1.a
tests/integrationtests/ngap/ngap_integration_test: lib/gateways/libsrsran_gateway.a
tests/integrationtests/ngap/ngap_integration_test: lib/support/libsrsran_support.a
tests/integrationtests/ngap/ngap_integration_test: lib/cu_cp/libsrsran_cu_cp.a
tests/integrationtests/ngap/ngap_integration_test: lib/ngap/libsrsran_ngap.a
tests/integrationtests/ngap/ngap_integration_test: lib/cu_cp/libsrsran_cu_cp.a
tests/integrationtests/ngap/ngap_integration_test: lib/asn1/libngap_asn1.a
tests/integrationtests/ngap/ngap_integration_test: lib/cu_cp/cell_meas_manager/libsrsran_cu_cp_cell_meas_manager.a
tests/integrationtests/ngap/ngap_integration_test: lib/cu_cp/mobility_manager/libsrsran_cu_cp_mobility_manager.a
tests/integrationtests/ngap/ngap_integration_test: lib/ran/libsrsran_ran.a
tests/integrationtests/ngap/ngap_integration_test: lib/e1ap/libsrsran_e1ap.a
tests/integrationtests/ngap/ngap_integration_test: lib/asn1/libe1ap_asn1.a
tests/integrationtests/ngap/ngap_integration_test: lib/f1ap/cu_cp/libsrsran_f1ap_cu.a
tests/integrationtests/ngap/ngap_integration_test: lib/f1ap/common/libsrsran_f1ap_common.a
tests/integrationtests/ngap/ngap_integration_test: lib/asn1/libf1ap_asn1.a
tests/integrationtests/ngap/ngap_integration_test: lib/rrc/libsrsran_rrc.a
tests/integrationtests/ngap/ngap_integration_test: lib/cu_cp/up_resource_manager/libsrsran_up_resource_manager.a
tests/integrationtests/ngap/ngap_integration_test: lib/pdcp/libsrsran_pdcp.a
tests/integrationtests/ngap/ngap_integration_test: lib/support/libsrsran_support.a
tests/integrationtests/ngap/ngap_integration_test: lib/support/network/libsrsran_network.a
tests/integrationtests/ngap/ngap_integration_test: /usr/lib/x86_64-linux-gnu/libyaml-cpp.so
tests/integrationtests/ngap/ngap_integration_test: lib/asn1/librrc_nr_asn1.a
tests/integrationtests/ngap/ngap_integration_test: lib/asn1/libasn1_utils.a
tests/integrationtests/ngap/ngap_integration_test: lib/security/libsrsran_security.a
tests/integrationtests/ngap/ngap_integration_test: /usr/lib/x86_64-linux-gnu/libmbedcrypto.so
tests/integrationtests/ngap/ngap_integration_test: lib/srslog/libsrslog.a
tests/integrationtests/ngap/ngap_integration_test: external/fmt/libfmt.a
tests/integrationtests/ngap/ngap_integration_test: /usr/lib/x86_64-linux-gnu/libsctp.so
tests/integrationtests/ngap/ngap_integration_test: tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ngap_integration_test"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/integrationtests/ngap && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ngap_integration_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/build: tests/integrationtests/ngap/ngap_integration_test
.PHONY : tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/build

tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/clean:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/integrationtests/ngap && $(CMAKE_COMMAND) -P CMakeFiles/ngap_integration_test.dir/cmake_clean.cmake
.PHONY : tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/clean

tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/depend:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/integrationtests/ngap /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/integrationtests/ngap /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/integrationtests/ngap/CMakeFiles/ngap_integration_test.dir/depend

