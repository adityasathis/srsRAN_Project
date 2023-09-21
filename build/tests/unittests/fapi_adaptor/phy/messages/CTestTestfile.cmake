# CMake generated Testfile for 
# Source directory: /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor/phy/messages
# Build directory: /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor/phy/messages
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor/phy/messages/fapi_phy_prach_adaptor_test[1]_include.cmake")
include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor/phy/messages/fapi_phy_pucch_adaptor_test[1]_include.cmake")
include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor/phy/messages/fapi_phy_pusch_adaptor_test[1]_include.cmake")
add_test(fapi_phy_ssb_adaptor_test "fapi_phy_ssb_adaptor_test")
set_tests_properties(fapi_phy_ssb_adaptor_test PROPERTIES  _BACKTRACE_TRIPLES "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor/phy/messages/CMakeLists.txt;25;add_test;/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor/phy/messages/CMakeLists.txt;0;")
add_test(fapi_phy_pdcch_adaptor_test "fapi_phy_pdcch_adaptor_test")
set_tests_properties(fapi_phy_pdcch_adaptor_test PROPERTIES  _BACKTRACE_TRIPLES "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor/phy/messages/CMakeLists.txt;29;add_test;/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor/phy/messages/CMakeLists.txt;0;")
add_test(fapi_phy_pdsch_adaptor_test "fapi_phy_pdsch_adaptor_test")
set_tests_properties(fapi_phy_pdsch_adaptor_test PROPERTIES  _BACKTRACE_TRIPLES "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor/phy/messages/CMakeLists.txt;33;add_test;/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/tests/unittests/fapi_adaptor/phy/messages/CMakeLists.txt;0;")
set_directory_properties(PROPERTIES LABELS "fapi_adaptor")
