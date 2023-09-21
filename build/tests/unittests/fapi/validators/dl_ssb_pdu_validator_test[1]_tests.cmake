add_test( validate_ssb_pdu.valid_pdu_passes /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=validate_ssb_pdu.valid_pdu_passes]==] --gtest_also_run_disabled_tests)
set_tests_properties( validate_ssb_pdu.valid_pdu_passes PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( validate_ssb_pdu.invalid_pdu_fails /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=validate_ssb_pdu.invalid_pdu_fails]==] --gtest_also_run_disabled_tests)
set_tests_properties( validate_ssb_pdu.invalid_pdu_fails PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( validate_ssb_pdu_death.invalid_point_A_death_test /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=validate_ssb_pdu_death.invalid_point_A_death_test]==] --gtest_also_run_disabled_tests)
set_tests_properties( validate_ssb_pdu_death.invalid_point_A_death_test PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[pci/validate_ssb_pdu_field.WithValue/(PhysicalcellID,Value=0,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=pci/validate_ssb_pdu_field.WithValue/0]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[pci/validate_ssb_pdu_field.WithValue/(PhysicalcellID,Value=0,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[pci/validate_ssb_pdu_field.WithValue/(PhysicalcellID,Value=511,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=pci/validate_ssb_pdu_field.WithValue/1]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[pci/validate_ssb_pdu_field.WithValue/(PhysicalcellID,Value=511,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[pci/validate_ssb_pdu_field.WithValue/(PhysicalcellID,Value=1007,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=pci/validate_ssb_pdu_field.WithValue/2]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[pci/validate_ssb_pdu_field.WithValue/(PhysicalcellID,Value=1007,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[pci/validate_ssb_pdu_field.WithValue/(PhysicalcellID,Value=1008,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=pci/validate_ssb_pdu_field.WithValue/3]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[pci/validate_ssb_pdu_field.WithValue/(PhysicalcellID,Value=1008,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=0,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=pss/validate_ssb_pdu_field.WithValue/0]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=0,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=1,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=pss/validate_ssb_pdu_field.WithValue/1]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=1,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=2,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=pss/validate_ssb_pdu_field.WithValue/2]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=2,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=254,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=pss/validate_ssb_pdu_field.WithValue/3]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=254,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=255,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=pss/validate_ssb_pdu_field.WithValue/4]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=255,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[pbch_block_index/validate_ssb_pdu_field.WithValue/(SS/PBCHblockindex,Value=0,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=pbch_block_index/validate_ssb_pdu_field.WithValue/0]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[pbch_block_index/validate_ssb_pdu_field.WithValue/(SS/PBCHblockindex,Value=0,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[pbch_block_index/validate_ssb_pdu_field.WithValue/(SS/PBCHblockindex,Value=32,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=pbch_block_index/validate_ssb_pdu_field.WithValue/1]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[pbch_block_index/validate_ssb_pdu_field.WithValue/(SS/PBCHblockindex,Value=32,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[pbch_block_index/validate_ssb_pdu_field.WithValue/(SS/PBCHblockindex,Value=63,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=pbch_block_index/validate_ssb_pdu_field.WithValue/2]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[pbch_block_index/validate_ssb_pdu_field.WithValue/(SS/PBCHblockindex,Value=63,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[pbch_block_index/validate_ssb_pdu_field.WithValue/(SS/PBCHblockindex,Value=64,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=pbch_block_index/validate_ssb_pdu_field.WithValue/3]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[pbch_block_index/validate_ssb_pdu_field.WithValue/(SS/PBCHblockindex,Value=64,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[k_ssb/validate_ssb_pdu_field.WithValue/(Subcarrieroffset,Value=0,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=k_ssb/validate_ssb_pdu_field.WithValue/0]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[k_ssb/validate_ssb_pdu_field.WithValue/(Subcarrieroffset,Value=0,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[k_ssb/validate_ssb_pdu_field.WithValue/(Subcarrieroffset,Value=16,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=k_ssb/validate_ssb_pdu_field.WithValue/1]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[k_ssb/validate_ssb_pdu_field.WithValue/(Subcarrieroffset,Value=16,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[k_ssb/validate_ssb_pdu_field.WithValue/(Subcarrieroffset,Value=31,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=k_ssb/validate_ssb_pdu_field.WithValue/2]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[k_ssb/validate_ssb_pdu_field.WithValue/(Subcarrieroffset,Value=31,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[k_ssb/validate_ssb_pdu_field.WithValue/(Subcarrieroffset,Value=32,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=k_ssb/validate_ssb_pdu_field.WithValue/3]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[k_ssb/validate_ssb_pdu_field.WithValue/(Subcarrieroffset,Value=32,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[offset_pointA/validate_ssb_pdu_field.WithValue/(OffsetpointA,Value=0,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=offset_pointA/validate_ssb_pdu_field.WithValue/0]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[offset_pointA/validate_ssb_pdu_field.WithValue/(OffsetpointA,Value=0,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[offset_pointA/validate_ssb_pdu_field.WithValue/(OffsetpointA,Value=1100,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=offset_pointA/validate_ssb_pdu_field.WithValue/1]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[offset_pointA/validate_ssb_pdu_field.WithValue/(OffsetpointA,Value=1100,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[offset_pointA/validate_ssb_pdu_field.WithValue/(OffsetpointA,Value=2199,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=offset_pointA/validate_ssb_pdu_field.WithValue/2]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[offset_pointA/validate_ssb_pdu_field.WithValue/(OffsetpointA,Value=2199,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[ssb_case/validate_ssb_pdu_field.WithValue/(SSBCasetype,Value=0,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=ssb_case/validate_ssb_pdu_field.WithValue/0]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[ssb_case/validate_ssb_pdu_field.WithValue/(SSBCasetype,Value=0,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[ssb_case/validate_ssb_pdu_field.WithValue/(SSBCasetype,Value=2,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=ssb_case/validate_ssb_pdu_field.WithValue/1]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[ssb_case/validate_ssb_pdu_field.WithValue/(SSBCasetype,Value=2,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[ssb_case/validate_ssb_pdu_field.WithValue/(SSBCasetype,Value=4,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=ssb_case/validate_ssb_pdu_field.WithValue/2]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[ssb_case/validate_ssb_pdu_field.WithValue/(SSBCasetype,Value=4,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[ssb_case/validate_ssb_pdu_field.WithValue/(SSBCasetype,Value=5,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=ssb_case/validate_ssb_pdu_field.WithValue/3]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[ssb_case/validate_ssb_pdu_field.WithValue/(SSBCasetype,Value=5,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[scs/validate_ssb_pdu_field.WithValue/(Subcarrierspacing,Value=0,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=scs/validate_ssb_pdu_field.WithValue/0]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[scs/validate_ssb_pdu_field.WithValue/(Subcarrierspacing,Value=0,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[scs/validate_ssb_pdu_field.WithValue/(Subcarrierspacing,Value=2,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=scs/validate_ssb_pdu_field.WithValue/1]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[scs/validate_ssb_pdu_field.WithValue/(Subcarrierspacing,Value=2,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[scs/validate_ssb_pdu_field.WithValue/(Subcarrierspacing,Value=4,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=scs/validate_ssb_pdu_field.WithValue/2]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[scs/validate_ssb_pdu_field.WithValue/(Subcarrierspacing,Value=4,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[scs/validate_ssb_pdu_field.WithValue/(Subcarrierspacing,Value=5,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=scs/validate_ssb_pdu_field.WithValue/3]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[scs/validate_ssb_pdu_field.WithValue/(Subcarrierspacing,Value=5,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=3,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=L_max/validate_ssb_pdu_field.WithValue/0]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=3,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=4,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=L_max/validate_ssb_pdu_field.WithValue/1]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=4,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=5,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=L_max/validate_ssb_pdu_field.WithValue/2]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=5,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=7,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=L_max/validate_ssb_pdu_field.WithValue/3]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=7,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=8,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=L_max/validate_ssb_pdu_field.WithValue/4]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=8,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=9,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=L_max/validate_ssb_pdu_field.WithValue/5]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=9,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=63,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=L_max/validate_ssb_pdu_field.WithValue/6]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=63,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=64,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=L_max/validate_ssb_pdu_field.WithValue/7]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=64,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=65,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=L_max/validate_ssb_pdu_field.WithValue/8]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=65,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=4294934528,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=scaling_power/validate_ssb_pdu_field.WithValue/0]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=4294934528,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=4294934529,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=scaling_power/validate_ssb_pdu_field.WithValue/1]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=4294934529,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=4294956295,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=scaling_power/validate_ssb_pdu_field.WithValue/2]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=4294956295,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=4294956296,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=scaling_power/validate_ssb_pdu_field.WithValue/3]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=4294956296,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=0,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=scaling_power/validate_ssb_pdu_field.WithValue/4]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=0,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=12000,Result=1)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=scaling_power/validate_ssb_pdu_field.WithValue/5]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=12000,Result=1)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=12001,Result=0)]==] /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators/dl_ssb_pdu_validator_test [==[--gtest_filter=scaling_power/validate_ssb_pdu_field.WithValue/6]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=12001,Result=0)]==] PROPERTIES WORKING_DIRECTORY /home/adityasathis/Sources/radio_protocol_stacks/srsran/srsran_5g_oscric/build/tests/unittests/fapi/validators SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( dl_ssb_pdu_validator_test_TESTS validate_ssb_pdu.valid_pdu_passes validate_ssb_pdu.invalid_pdu_fails validate_ssb_pdu_death.invalid_point_A_death_test [==[pci/validate_ssb_pdu_field.WithValue/(PhysicalcellID,Value=0,Result=1)]==] [==[pci/validate_ssb_pdu_field.WithValue/(PhysicalcellID,Value=511,Result=1)]==] [==[pci/validate_ssb_pdu_field.WithValue/(PhysicalcellID,Value=1007,Result=1)]==] [==[pci/validate_ssb_pdu_field.WithValue/(PhysicalcellID,Value=1008,Result=0)]==] [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=0,Result=1)]==] [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=1,Result=1)]==] [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=2,Result=0)]==] [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=254,Result=0)]==] [==[pss/validate_ssb_pdu_field.WithValue/(BetaPSSprofileNR,Value=255,Result=1)]==] [==[pbch_block_index/validate_ssb_pdu_field.WithValue/(SS/PBCHblockindex,Value=0,Result=1)]==] [==[pbch_block_index/validate_ssb_pdu_field.WithValue/(SS/PBCHblockindex,Value=32,Result=1)]==] [==[pbch_block_index/validate_ssb_pdu_field.WithValue/(SS/PBCHblockindex,Value=63,Result=1)]==] [==[pbch_block_index/validate_ssb_pdu_field.WithValue/(SS/PBCHblockindex,Value=64,Result=0)]==] [==[k_ssb/validate_ssb_pdu_field.WithValue/(Subcarrieroffset,Value=0,Result=1)]==] [==[k_ssb/validate_ssb_pdu_field.WithValue/(Subcarrieroffset,Value=16,Result=1)]==] [==[k_ssb/validate_ssb_pdu_field.WithValue/(Subcarrieroffset,Value=31,Result=1)]==] [==[k_ssb/validate_ssb_pdu_field.WithValue/(Subcarrieroffset,Value=32,Result=0)]==] [==[offset_pointA/validate_ssb_pdu_field.WithValue/(OffsetpointA,Value=0,Result=1)]==] [==[offset_pointA/validate_ssb_pdu_field.WithValue/(OffsetpointA,Value=1100,Result=1)]==] [==[offset_pointA/validate_ssb_pdu_field.WithValue/(OffsetpointA,Value=2199,Result=1)]==] [==[ssb_case/validate_ssb_pdu_field.WithValue/(SSBCasetype,Value=0,Result=1)]==] [==[ssb_case/validate_ssb_pdu_field.WithValue/(SSBCasetype,Value=2,Result=1)]==] [==[ssb_case/validate_ssb_pdu_field.WithValue/(SSBCasetype,Value=4,Result=1)]==] [==[ssb_case/validate_ssb_pdu_field.WithValue/(SSBCasetype,Value=5,Result=0)]==] [==[scs/validate_ssb_pdu_field.WithValue/(Subcarrierspacing,Value=0,Result=1)]==] [==[scs/validate_ssb_pdu_field.WithValue/(Subcarrierspacing,Value=2,Result=1)]==] [==[scs/validate_ssb_pdu_field.WithValue/(Subcarrierspacing,Value=4,Result=1)]==] [==[scs/validate_ssb_pdu_field.WithValue/(Subcarrierspacing,Value=5,Result=0)]==] [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=3,Result=0)]==] [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=4,Result=1)]==] [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=5,Result=0)]==] [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=7,Result=0)]==] [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=8,Result=1)]==] [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=9,Result=0)]==] [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=63,Result=0)]==] [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=64,Result=1)]==] [==[L_max/validate_ssb_pdu_field.WithValue/(L_max,Value=65,Result=0)]==] [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=4294934528,Result=1)]==] [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=4294934529,Result=0)]==] [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=4294956295,Result=0)]==] [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=4294956296,Result=1)]==] [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=0,Result=1)]==] [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=12000,Result=1)]==] [==[scaling_power/validate_ssb_pdu_field.WithValue/(BasebandpowerscalingappliedtoSS-PBCH,Value=12001,Result=0)]==])
