if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/rrc/rrc_ue_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/rrc/rrc_ue_test[1]_tests.cmake")
else()
  add_test(rrc_ue_test_NOT_BUILT rrc_ue_test_NOT_BUILT)
endif()
