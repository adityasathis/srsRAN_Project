if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders/dl_tti_request_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders/dl_tti_request_test[1]_tests.cmake")
else()
  add_test(dl_tti_request_test_NOT_BUILT dl_tti_request_test_NOT_BUILT)
endif()
