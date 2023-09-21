# CMake generated Testfile for 
# Source directory: /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/phy/upper/channel_coding
# Build directory: /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/upper/channel_coding
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(crc_calculator_test "crc_calculator_test" "-F" "clmul")
set_tests_properties(crc_calculator_test PROPERTIES  _BACKTRACE_TRIPLES "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/phy/upper/channel_coding/CMakeLists.txt;26;add_test;/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/phy/upper/channel_coding/CMakeLists.txt;0;")
subdirs("polar")
subdirs("ldpc")
subdirs("short")
set_directory_properties(PROPERTIES LABELS "phy")
