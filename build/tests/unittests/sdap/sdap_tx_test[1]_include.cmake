if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/sdap/sdap_tx_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/sdap/sdap_tx_test[1]_tests.cmake")
else()
  add_test(sdap_tx_test_NOT_BUILT sdap_tx_test_NOT_BUILT)
endif()
