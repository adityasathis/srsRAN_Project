if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/cu_cp/mobility/cu_cp_mobility_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/cu_cp/mobility/cu_cp_mobility_test[1]_tests.cmake")
else()
  add_test(cu_cp_mobility_test_NOT_BUILT cu_cp_mobility_test_NOT_BUILT)
endif()
