if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/cu_cp/du_processor/du_processor_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/cu_cp/du_processor/du_processor_test[1]_tests.cmake")
else()
  add_test(du_processor_test_NOT_BUILT du_processor_test_NOT_BUILT)
endif()
