add_test( f1u_connector_test.create_new_connector /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/f1u_local_connector_test [==[--gtest_filter=f1u_connector_test.create_new_connector]==] --gtest_also_run_disabled_tests)
set_tests_properties( f1u_connector_test.create_new_connector PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( f1u_connector_test.attach_detach_cu_up_f1u_to_du_f1u /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/f1u_local_connector_test [==[--gtest_filter=f1u_connector_test.attach_detach_cu_up_f1u_to_du_f1u]==] --gtest_also_run_disabled_tests)
set_tests_properties( f1u_connector_test.attach_detach_cu_up_f1u_to_du_f1u PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( f1u_connector_test.detach_du_f1u_first /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/f1u_local_connector_test [==[--gtest_filter=f1u_connector_test.detach_du_f1u_first]==] --gtest_also_run_disabled_tests)
set_tests_properties( f1u_connector_test.detach_du_f1u_first PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( f1u_connector_test.update_du_f1u /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/f1u_local_connector_test [==[--gtest_filter=f1u_connector_test.update_du_f1u]==] --gtest_also_run_disabled_tests)
set_tests_properties( f1u_connector_test.update_du_f1u PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( f1u_local_connector_test_TESTS f1u_connector_test.create_new_connector f1u_connector_test.attach_detach_cu_up_f1u_to_du_f1u f1u_connector_test.detach_du_f1u_first f1u_connector_test.update_du_f1u)
