if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders/ul_pucch_builder_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/builders/ul_pucch_builder_test[1]_tests.cmake")
else()
  add_test(ul_pucch_builder_test_NOT_BUILT ul_pucch_builder_test_NOT_BUILT)
endif()
