if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/mac/mac_dl_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/mac/mac_dl_test[1]_tests.cmake")
else()
  add_test(mac_dl_test_NOT_BUILT mac_dl_test_NOT_BUILT)
endif()
