
execute_process(
COMMAND git rev-parse --abbrev-ref HEAD
WORKING_DIRECTORY "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric"
OUTPUT_VARIABLE GIT_BRANCH
OUTPUT_STRIP_TRAILING_WHITESPACE
)

execute_process(
COMMAND git log -1 --format=%h
WORKING_DIRECTORY "/home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric"
OUTPUT_VARIABLE GIT_COMMIT_HASH
OUTPUT_STRIP_TRAILING_WHITESPACE
)

message(STATUS "Generating build information")
configure_file(
  /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/lib/support/build_info/hashes.h.in
  /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/hashes.h
)
