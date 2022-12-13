/*
 *
 * Copyright 2013-2022 Software Radio Systems Limited
 *
 * By using this file, you agree to the terms and conditions set
 * forth in the LICENSE file which can be found at the top level of
 * the distribution.
 *
 */

#include "srsgnb/fapi/message_builders.h"
#include <gtest/gtest.h>

using namespace srsgnb;
using namespace fapi;

TEST(dl_csi_pdu_builder, valid_basic_parameters_passes)
{
  dl_csi_rs_pdu         pdu;
  dl_csi_rs_pdu_builder builder(pdu);

  unsigned              start_rb     = 200;
  unsigned              nof_rb       = 150;
  csi_type              type         = csi_type::CSI_RS_ZP;
  unsigned              row          = 10;
  unsigned              freq_domain  = 1024;
  unsigned              sym_l0       = 2;
  unsigned              sym_l1       = 3;
  csi_cdm_type          cdm          = csi_cdm_type::cdm8_FD2_TD4;
  csi_freq_density_type freq_density = csi_freq_density_type::one;
  unsigned              scram_id     = 523;

  builder.set_basic_parameters(start_rb, nof_rb, type, row, freq_domain, sym_l0, sym_l1, cdm, freq_density, scram_id);

  ASSERT_EQ(start_rb, pdu.start_rb);
  ASSERT_EQ(nof_rb, pdu.num_rbs);
  ASSERT_EQ(type, pdu.type);
  ASSERT_EQ(row, pdu.row);
  ASSERT_EQ(freq_domain, pdu.freq_domain);
  ASSERT_EQ(sym_l0, pdu.symb_L0);
  ASSERT_EQ(sym_l1, pdu.symb_L1);
  ASSERT_EQ(cdm, pdu.cdm_type);
  ASSERT_EQ(freq_density, pdu.freq_density);
  ASSERT_EQ(scram_id, pdu.scramb_id);
}

TEST(dl_csi_pdu_builder, valid_bwp_parameters_passes)
{
  dl_csi_rs_pdu         pdu;
  dl_csi_rs_pdu_builder builder(pdu);

  subcarrier_spacing scs      = subcarrier_spacing::kHz60;
  cyclic_prefix      cyclic_p = cyclic_prefix::NORMAL;

  builder.set_bwp_parameters(scs, cyclic_p);

  ASSERT_EQ(scs, pdu.scs);
  ASSERT_EQ(cyclic_p, pdu.cp);
}

TEST(dl_csi_pdu_builder, valid_tx_power_info_parameters_passes)
{
  for (auto power : {0, -8}) {
    dl_csi_rs_pdu         pdu;
    dl_csi_rs_pdu_builder builder(pdu);

    nzp_csi_rs_epre_to_ssb ss = nzp_csi_rs_epre_to_ssb::dB3;
    optional<float>        profile_nr;
    if (power) {
      profile_nr.emplace(power);
    }

    builder.set_tx_power_info_parameters(profile_nr, ss);

    ASSERT_EQ(ss, pdu.power_control_offset_ss_profile_nr);
    ASSERT_EQ(profile_nr ? static_cast<unsigned>(profile_nr.value() + 8) : 255, pdu.power_control_offset_profile_nr);
  }
}

TEST(dl_csi_pdu_builder, valid_maintenance_v3_tx_power_parameters_passes)
{
  for (auto power : {0, -8}) {
    dl_csi_rs_pdu         pdu;
    dl_csi_rs_pdu_builder builder(pdu);

    optional<float> profile_sss;
    if (power) {
      profile_sss.emplace(power);
    }

    builder.set_maintenance_v3_tx_power_info_parameters(profile_sss);

    ASSERT_EQ(profile_sss ? static_cast<int>(profile_sss.value() * 1000.F) : -32768,
              pdu.csi_rs_maintenance_v3.csi_rs_power_offset_profile_sss);
  }
}
