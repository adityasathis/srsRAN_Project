if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du/f1u_du_bearer_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du/f1u_du_bearer_test[1]_tests.cmake")
else()
  add_test(f1u_du_bearer_test_NOT_BUILT f1u_du_bearer_test_NOT_BUILT)
endif()
