if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_csi_pdu_validator_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_csi_pdu_validator_test[1]_tests.cmake")
else()
  add_test(dl_csi_pdu_validator_test_NOT_BUILT dl_csi_pdu_validator_test_NOT_BUILT)
endif()
