add_test( cu_up_test.when_e1ap_connection_established_then_e1ap_connected /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/cu_up/cu_up_test [==[--gtest_filter=cu_up_test.when_e1ap_connection_established_then_e1ap_connected]==] --gtest_also_run_disabled_tests)
set_tests_properties( cu_up_test.when_e1ap_connection_established_then_e1ap_connected PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/cu_up SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( cu_up_test.dl_data_flow /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/cu_up/cu_up_test [==[--gtest_filter=cu_up_test.dl_data_flow]==] --gtest_also_run_disabled_tests)
set_tests_properties( cu_up_test.dl_data_flow PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/cu_up SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( cu_up_test.ul_data_flow /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/cu_up/cu_up_test [==[--gtest_filter=cu_up_test.ul_data_flow]==] --gtest_also_run_disabled_tests)
set_tests_properties( cu_up_test.ul_data_flow PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/cu_up SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( cu_up_test_TESTS cu_up_test.when_e1ap_connection_established_then_e1ap_connected cu_up_test.dl_data_flow cu_up_test.ul_data_flow)
