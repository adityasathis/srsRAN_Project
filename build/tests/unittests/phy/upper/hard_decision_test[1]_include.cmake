if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/upper/hard_decision_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/phy/upper/hard_decision_test[1]_tests.cmake")
else()
  add_test(hard_decision_test_NOT_BUILT hard_decision_test_NOT_BUILT)
endif()
