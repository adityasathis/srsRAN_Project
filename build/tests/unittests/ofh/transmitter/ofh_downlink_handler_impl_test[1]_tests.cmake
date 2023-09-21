add_test( ofh_downlink_handler_impl.handling_downlink_data_use_control_and_user_plane /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ofh/transmitter/ofh_downlink_handler_impl_test [==[--gtest_filter=ofh_downlink_handler_impl.handling_downlink_data_use_control_and_user_plane]==] --gtest_also_run_disabled_tests)
set_tests_properties( ofh_downlink_handler_impl.handling_downlink_data_use_control_and_user_plane PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ofh/transmitter SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( ofh_downlink_handler_impl.late_rg_is_not_handled /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ofh/transmitter/ofh_downlink_handler_impl_test [==[--gtest_filter=ofh_downlink_handler_impl.late_rg_is_not_handled]==] --gtest_also_run_disabled_tests)
set_tests_properties( ofh_downlink_handler_impl.late_rg_is_not_handled PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ofh/transmitter SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( ofh_downlink_handler_impl.same_slot_fails /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ofh/transmitter/ofh_downlink_handler_impl_test [==[--gtest_filter=ofh_downlink_handler_impl.same_slot_fails]==] --gtest_also_run_disabled_tests)
set_tests_properties( ofh_downlink_handler_impl.same_slot_fails PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ofh/transmitter SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( ofh_downlink_handler_impl.rg_in_the_frontier_is_handled /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ofh/transmitter/ofh_downlink_handler_impl_test [==[--gtest_filter=ofh_downlink_handler_impl.rg_in_the_frontier_is_handled]==] --gtest_also_run_disabled_tests)
set_tests_properties( ofh_downlink_handler_impl.rg_in_the_frontier_is_handled PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ofh/transmitter SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( ofh_downlink_handler_impl_test_TESTS ofh_downlink_handler_impl.handling_downlink_data_use_control_and_user_plane ofh_downlink_handler_impl.late_rg_is_not_handled ofh_downlink_handler_impl.same_slot_fails ofh_downlink_handler_impl.rg_in_the_frontier_is_handled)
