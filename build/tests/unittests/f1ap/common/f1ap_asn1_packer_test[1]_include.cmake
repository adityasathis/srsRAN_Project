if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1ap/common/f1ap_asn1_packer_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1ap/common/f1ap_asn1_packer_test[1]_tests.cmake")
else()
  add_test(f1ap_asn1_packer_test_NOT_BUILT f1ap_asn1_packer_test_NOT_BUILT)
endif()
