if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/pdcp/pdcp_tx_status_report_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/pdcp/pdcp_tx_status_report_test[1]_tests.cmake")
else()
  add_test(pdcp_tx_status_report_test_NOT_BUILT pdcp_tx_status_report_test_NOT_BUILT)
endif()
