if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/rlc/rlc_tx_am_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/rlc/rlc_tx_am_test[1]_tests.cmake")
else()
  add_test(rlc_tx_am_test_NOT_BUILT rlc_tx_am_test_NOT_BUILT)
endif()
