add_test( nr_cgi_helpers_test.nr_cell_identity_validity /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ran/nr_cgi_helpers_test [==[--gtest_filter=nr_cgi_helpers_test.nr_cell_identity_validity]==] --gtest_also_run_disabled_tests)
set_tests_properties( nr_cgi_helpers_test.nr_cell_identity_validity PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ran SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( nr_cgi_helpers_test.make_nr_cell_identity_test /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ran/nr_cgi_helpers_test [==[--gtest_filter=nr_cgi_helpers_test.make_nr_cell_identity_test]==] --gtest_also_run_disabled_tests)
set_tests_properties( nr_cgi_helpers_test.make_nr_cell_identity_test PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/ran SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( nr_cgi_helpers_test_TESTS nr_cgi_helpers_test.nr_cell_identity_validity nr_cgi_helpers_test.make_nr_cell_identity_test)
