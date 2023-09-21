add_test( f1u_du_test.create_new_entity /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du/f1u_du_bearer_test [==[--gtest_filter=f1u_du_test.create_new_entity]==] --gtest_also_run_disabled_tests)
set_tests_properties( f1u_du_test.create_new_entity PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( f1u_du_test.rx_discard /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du/f1u_du_bearer_test [==[--gtest_filter=f1u_du_test.rx_discard]==] --gtest_also_run_disabled_tests)
set_tests_properties( f1u_du_test.rx_discard PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( f1u_du_test.rx_pdcp_pdus /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du/f1u_du_bearer_test [==[--gtest_filter=f1u_du_test.rx_pdcp_pdus]==] --gtest_also_run_disabled_tests)
set_tests_properties( f1u_du_test.rx_pdcp_pdus PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( f1u_du_test.tx_pdcp_pdus /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du/f1u_du_bearer_test [==[--gtest_filter=f1u_du_test.tx_pdcp_pdus]==] --gtest_also_run_disabled_tests)
set_tests_properties( f1u_du_test.tx_pdcp_pdus PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( f1u_du_test.tx_pdcp_pdus_with_transmit_notification /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du/f1u_du_bearer_test [==[--gtest_filter=f1u_du_test.tx_pdcp_pdus_with_transmit_notification]==] --gtest_also_run_disabled_tests)
set_tests_properties( f1u_du_test.tx_pdcp_pdus_with_transmit_notification PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( f1u_du_test.tx_pdcp_pdus_with_delivery_notification /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du/f1u_du_bearer_test [==[--gtest_filter=f1u_du_test.tx_pdcp_pdus_with_delivery_notification]==] --gtest_also_run_disabled_tests)
set_tests_properties( f1u_du_test.tx_pdcp_pdus_with_delivery_notification PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( f1u_du_test.tx_transmit_notification /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du/f1u_du_bearer_test [==[--gtest_filter=f1u_du_test.tx_transmit_notification]==] --gtest_also_run_disabled_tests)
set_tests_properties( f1u_du_test.tx_transmit_notification PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( f1u_du_test.tx_delivery_notification /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du/f1u_du_bearer_test [==[--gtest_filter=f1u_du_test.tx_delivery_notification]==] --gtest_also_run_disabled_tests)
set_tests_properties( f1u_du_test.tx_delivery_notification PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/f1u/du SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( f1u_du_bearer_test_TESTS f1u_du_test.create_new_entity f1u_du_test.rx_discard f1u_du_test.rx_pdcp_pdus f1u_du_test.tx_pdcp_pdus f1u_du_test.tx_pdcp_pdus_with_transmit_notification f1u_du_test.tx_pdcp_pdus_with_delivery_notification f1u_du_test.tx_transmit_notification f1u_du_test.tx_delivery_notification)
