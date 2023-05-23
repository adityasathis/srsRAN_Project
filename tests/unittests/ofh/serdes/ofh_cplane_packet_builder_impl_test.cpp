/*
 *
 * Copyright 2021-2023 Software Radio Systems Limited
 *
 * By using this file, you agree to the terms and conditions set
 * forth in the LICENSE file which can be found at the top level of
 * the distribution.
 *
 */

#include "../../../../lib/ofh/serdes/ofh_cplane_message_builder_impl.h"
#include <gtest/gtest.h>

using namespace srsran;
using namespace ofh;

TEST(ofh_control_plane_packet_builder_impl_test, build_valid_control_packet_should_pass)
{
  std::vector<uint8_t> packet = {
      0x90, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xfe, 0x00, 0x00};

  std::vector<uint8_t> result_packet(packet.size(), 0);

  cplane_section_type1_parameters  packet_params;
  cplane_radio_application_header& header = packet_params.radio_hdr;
  header.direction                        = data_direction::downlink;
  header.filter_index                     = filter_index_type::standard_channel_filter;
  header.slot                             = slot_point(0, 0, 0);
  header.start_symbol                     = 0;

  cplane_common_section_0_1_3_5_fields& section = packet_params.section_fields.common_fields;
  section.section_id                            = 0;
  section.prb_start                             = 0;
  section.nof_prb                               = 0;
  section.re_mask                               = 0xfff;
  section.nof_symbols                           = 14;
  packet_params.comp_params                     = {compression_type::none, 16};

  cplane_message_builder_impl builder;

  unsigned nof_bytes = builder.build_dl_ul_radio_channel_message(result_packet, packet_params);

  ASSERT_EQ(packet, result_packet);
  ASSERT_EQ(nof_bytes, packet.size());
}

TEST(ofh_control_plane_packet_builder_impl_test, build_valid_invented_control_packet_should_pass)
{
  std::vector<uint8_t> packet = {
      0x90, 0x02, 0x30, 0x44, 0x01, 0x01, 0x00, 0x00, 0x00, 0x50, 0x06, 0x07, 0xff, 0xfe, 0x00, 0x00};

  std::vector<uint8_t> result_packet(packet.size(), 0);

  cplane_section_type1_parameters  packet_params;
  cplane_radio_application_header& header = packet_params.radio_hdr;
  header.direction                        = data_direction::downlink;
  header.filter_index                     = filter_index_type::standard_channel_filter;
  header.slot                             = slot_point(1, 2, 7);
  header.start_symbol                     = 4;

  cplane_common_section_0_1_3_5_fields& section = packet_params.section_fields.common_fields;
  section.section_id                            = 5;
  section.prb_start                             = 6;
  section.nof_prb                               = 7;
  section.re_mask                               = 0xfff;
  section.nof_symbols                           = 14;

  packet_params.comp_params = {compression_type::none, 16};

  cplane_message_builder_impl builder;

  unsigned nof_bytes = builder.build_dl_ul_radio_channel_message(result_packet, packet_params);

  ASSERT_EQ(packet, result_packet);
  ASSERT_EQ(nof_bytes, packet.size());
}

TEST(ofh_control_plane_packet_builder_impl_test, build_valid_invented_idle_packet_should_pass)
{
  std::vector<uint8_t> packet = {0x90, 0x28, 0x20, 0x4a, 0x01, 0x00, 0x08, 0xa0, 0x01, 0x00,
                                 0x00, 0x00, 0x00, 0x50, 0x06, 0x07, 0xff, 0xf4, 0x00, 0x00};

  std::vector<uint8_t> result_packet(packet.size(), 0);

  cplane_section_type0_parameters  packet_params;
  cplane_radio_application_header& header = packet_params.radio_hdr;
  header.direction                        = data_direction::downlink;
  header.filter_index                     = filter_index_type::standard_channel_filter;
  header.slot                             = slot_point(1, 40, 5);
  header.start_symbol                     = 10;

  cplane_common_section_0_1_3_5_fields& section = packet_params.section_fields.common_fields;
  section.section_id                            = 5;
  section.prb_start                             = 6;
  section.nof_prb                               = 7;
  section.re_mask                               = 0xfff;
  section.nof_symbols                           = 4;

  packet_params.cp          = cyclic_prefix::NORMAL;
  packet_params.scs         = srsran::subcarrier_spacing::kHz30;
  packet_params.time_offset = 2208;

  cplane_message_builder_impl builder;

  unsigned nof_bytes = builder.build_idle_guard_period_message(result_packet, packet_params);

  ASSERT_EQ(packet, result_packet);
  ASSERT_EQ(nof_bytes, packet.size());
}
