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
include tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/flags.make

tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.o: tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/flags.make
tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.o: ../tests/unittests/phy/upper/channel_processors/ssb_processor_unittest.cpp
tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.o: tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.o"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/upper/channel_processors && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.o -MF CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.o.d -o CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.o -c /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/phy/upper/channel_processors/ssb_processor_unittest.cpp

tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.i"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/upper/channel_processors && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/phy/upper/channel_processors/ssb_processor_unittest.cpp > CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.i

tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.s"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/upper/channel_processors && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/phy/upper/channel_processors/ssb_processor_unittest.cpp -o CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.s

# Object files for target ssb_processor_unittest
ssb_processor_unittest_OBJECTS = \
"CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.o"

# External object files for target ssb_processor_unittest
ssb_processor_unittest_EXTERNAL_OBJECTS =

tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/ssb_processor_unittest.cpp.o
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/build.make
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_channel_processors.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/srslog/libsrslog.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_pbch_encoder.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_pbch_modulator.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_pdcch_encoder.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_pdcch_modulator.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_pdcch_processor.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_pdsch_encoder.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_pdsch_modulator.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_modulation/libsrsran_channel_modulation.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_pdsch_processor.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_prach_detector.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_pucch_demodulator.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_pucch_detector.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_pucch_processor.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/pusch/libsrsran_pusch_decoder.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/pusch/libsrsran_pusch_demodulator.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/pusch/libsrsran_pusch_processor.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_ssb_processor.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/sequence_generators/libsrsran_sequence_generators.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/signal_processors/libsrsran_signal_processors.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/ran/libsrsran_ran.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/libsrsran_upper_phy_support.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/support/libsrsran_phy_support.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/generic_functions/libsrsran_generic_funcs.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/generic_functions/libsrsran_generic_funcs_dft.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: /usr/lib/x86_64-linux-gnu/libfftw3f.so
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/libsrsran_uci_decoder.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_coding/libsrsran_channel_coding.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_coding/libsrsran_crc_calculator.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_coding/polar/libsrsran_polar.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_coding/ldpc/libsrsran_ldpc.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_coding/short/libsrsran_short_block.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/support/libsrsran_support.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/support/network/libsrsran_network.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: /usr/lib/x86_64-linux-gnu/libyaml-cpp.so
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/liblog_likelihood_ratio.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/srsvec/libsrsvec.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/srslog/libsrslog.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: external/fmt/libfmt.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: lib/phy/upper/channel_processors/pusch/libsrsran_ulsch_demux.a
tests/unittests/phy/upper/channel_processors/ssb_processor_unittest: tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ssb_processor_unittest"
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/upper/channel_processors && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ssb_processor_unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/build: tests/unittests/phy/upper/channel_processors/ssb_processor_unittest
.PHONY : tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/build

tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/clean:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/upper/channel_processors && $(CMAKE_COMMAND) -P CMakeFiles/ssb_processor_unittest.dir/cmake_clean.cmake
.PHONY : tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/clean

tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/depend:
	cd /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/phy/upper/channel_processors /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/upper/channel_processors /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/unittests/phy/upper/channel_processors/CMakeFiles/ssb_processor_unittest.dir/depend

