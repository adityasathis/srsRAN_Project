if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor/mac/messages/mac_fapi_pucch_adaptor_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi_adaptor/mac/messages/mac_fapi_pucch_adaptor_test[1]_tests.cmake")
else()
  add_test(mac_fapi_pucch_adaptor_test_NOT_BUILT mac_fapi_pucch_adaptor_test_NOT_BUILT)
endif()
