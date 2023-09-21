# CMake generated Testfile for 
# Source directory: /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor/mac
# Build directory: /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor/mac
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor/mac/fapi_to_mac_data_msg_translator_test[1]_include.cmake")
add_test(mac_to_fapi_translator_test "mac_to_fapi_translator_test")
set_tests_properties(mac_to_fapi_translator_test PROPERTIES  _BACKTRACE_TRIPLES "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor/mac/CMakeLists.txt;27;add_test;/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor/mac/CMakeLists.txt;0;")
subdirs("messages")
set_directory_properties(PROPERTIES LABELS "fapi_adaptor")
