if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/cu_cp/cu_cp_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/cu_cp/cu_cp_test[1]_tests.cmake")
else()
  add_test(cu_cp_test_NOT_BUILT cu_cp_test_NOT_BUILT)
endif()
