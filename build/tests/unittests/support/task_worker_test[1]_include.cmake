if(EXISTS "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/support/task_worker_test[1]_tests.cmake")
  include("/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/support/task_worker_test[1]_tests.cmake")
else()
  add_test(task_worker_test_NOT_BUILT task_worker_test_NOT_BUILT)
endif()
