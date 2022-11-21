/*
 * Copyright 2013-2022 Software Radio Systems Limited
 *
 * By using this file, you agree to the terms and conditions set
 * forth in the LICENSE file which can be found at the top level of
 * the distribution.
 *
 */

#include "ue_sch_pdu_builder.h"
#include "../support/dmrs_helpers.h"
#include "../support/tbs_calculator.h"
#include "srsgnb/ran/resource_allocation/resource_allocation_frequency.h"

using namespace srsgnb;

static constexpr unsigned nof_bits_per_byte = 8U;

static prb_interval get_prb_interval(unsigned N_rb_bwp, unsigned frequency_resource)
{
  ra_frequency_type1_configuration ra_freq_cfg = ra_frequency_type1_from_riv(N_rb_bwp, frequency_resource);
  return prb_interval{ra_freq_cfg.start_vrb, ra_freq_cfg.start_vrb + ra_freq_cfg.length_vrb};
}

// See TS 38.211, 7.3.1.1. - Scrambling.
static unsigned get_pdsch_n_id(pci_t                              pci,
                               const bwp_downlink_dedicated*      bwp_dl_ded,
                               dci_dl_format                      dci_fmt,
                               search_space_configuration::type_t ss_type)
{
  if (bwp_dl_ded != nullptr and bwp_dl_ded->pdsch_cfg.has_value() and
      bwp_dl_ded->pdsch_cfg->data_scrambling_id_pdsch.has_value() and
      (dci_fmt != dci_dl_format::f1_0 or ss_type != search_space_configuration::type_t::common)) {
    return *bwp_dl_ded->pdsch_cfg->data_scrambling_id_pdsch;
  }
  return pci;
}

void srsgnb::build_pdsch_f1_0_tc_rnti(pdsch_information&                   pdsch,
                                      rnti_t                               rnti,
                                      const cell_configuration&            cell_cfg,
                                      const dci_1_0_tc_rnti_configuration& dci_cfg)
{
  static constexpr pdsch_mcs_table mcs_table        = pdsch_mcs_table::qam64;
  static constexpr unsigned        tb_scaling_field = 0; // TODO
  static constexpr unsigned        nof_oh_prb       = 0; // TODO
  static constexpr unsigned        nof_layers       = 1;

  pdsch.rnti = rnti;

  // PDSCH resources.
  pdsch.bwp_cfg = &cell_cfg.dl_cfg_common.init_dl_bwp.generic_params;
  // See 3GPP TS 38.213, clause 10.1 - CSS set configured by ra-SearchSpace is used for CRC scrambled by TC-RNTI.
  const search_space_configuration& ss =
      cell_cfg.dl_cfg_common.init_dl_bwp.pdcch_common
          .search_spaces[cell_cfg.dl_cfg_common.init_dl_bwp.pdcch_common.ra_search_space_id];
  if (ss.cs_id == to_coreset_id(0)) {
    pdsch.coreset_cfg = &*cell_cfg.dl_cfg_common.init_dl_bwp.pdcch_common.coreset0;
  } else {
    pdsch.coreset_cfg = &*cell_cfg.dl_cfg_common.init_dl_bwp.pdcch_common.common_coreset;
  }
  pdsch.prbs    = get_prb_interval(dci_cfg.N_rb_dl_bwp, dci_cfg.frequency_resource);
  pdsch.symbols = cell_cfg.dl_cfg_common.init_dl_bwp.pdsch_common.pdsch_td_alloc_list[dci_cfg.time_resource].symbols;

  // TODO: Use UE-dedicated DMRS info if needed.
  pdsch.dmrs = make_dmrs_info_common(
      cell_cfg.dl_cfg_common.init_dl_bwp.pdsch_common, dci_cfg.time_resource, cell_cfg.pci, cell_cfg.dmrs_typeA_pos);
  // See TS 38.211, 7.3.1.1. - Scrambling.
  pdsch.n_id           = cell_cfg.pci;
  pdsch.is_interleaved = dci_cfg.vrb_to_prb_mapping > 0;
  // See TS38.213, 10.1. - Type1-PDCCH CSS set for CRC scrambled by a TC-RNTI on the PCell.
  pdsch.ss_set_type = search_space_set_type::type1;
  pdsch.dci_fmt     = dci_dl_format::f1_0;

  // One Codeword.
  pdsch.codewords.emplace_back();
  pdsch_codeword& cw             = pdsch.codewords.back();
  cw.rv_index                    = dci_cfg.redundancy_version;
  cw.mcs_index                   = dci_cfg.modulation_coding_scheme;
  cw.mcs_table                   = mcs_table;
  sch_mcs_description mcs_config = pdsch_mcs_get_config(mcs_table, cw.mcs_index);
  cw.mcs_descr                   = mcs_config;
  cw.tb_size_bytes = tbs_calculator_calculate(tbs_calculator_configuration{(unsigned)pdsch.symbols.length(),
                                                                           calculate_nof_dmrs_per_rb(pdsch.dmrs),
                                                                           nof_oh_prb,
                                                                           mcs_config,
                                                                           nof_layers,
                                                                           tb_scaling_field,
                                                                           pdsch.prbs.prbs().length()}) /
                     nof_bits_per_byte;
}

void srsgnb::build_pdsch_f1_0_c_rnti(pdsch_information&                  pdsch,
                                     rnti_t                              rnti,
                                     const ue_cell_configuration&        ue_cell_cfg,
                                     bwp_id_t                            active_bwp_id,
                                     const search_space_configuration&   ss_cfg,
                                     const dci_1_0_c_rnti_configuration& dci_cfg)
{
  static constexpr pdsch_mcs_table mcs_table        = pdsch_mcs_table::qam64;
  static constexpr unsigned        tb_scaling_field = 0; // TODO.
  static constexpr unsigned        nof_oh_prb       = 0; // TODO.
  static constexpr unsigned        nof_layers       = 1;

  const cell_configuration&    cell_cfg = ue_cell_cfg.cell_cfg_common;
  const coreset_configuration& cs_cfg   = ue_cell_cfg.coreset(ss_cfg.cs_id);

  pdsch.rnti        = rnti;
  pdsch.bwp_cfg     = &ue_cell_cfg.find_dl_bwp_common(active_bwp_id)->generic_params;
  pdsch.coreset_cfg = &cs_cfg;

  pdsch.prbs    = get_prb_interval(dci_cfg.N_rb_dl_bwp, dci_cfg.frequency_resource);
  pdsch.symbols = cell_cfg.dl_cfg_common.init_dl_bwp.pdsch_common.pdsch_td_alloc_list[dci_cfg.time_resource].symbols;
  // TODO: Use UE-dedicated DMRS info if needed.
  pdsch.dmrs = make_dmrs_info_common(
      cell_cfg.dl_cfg_common.init_dl_bwp.pdsch_common, dci_cfg.time_resource, cell_cfg.pci, cell_cfg.dmrs_typeA_pos);
  pdsch.is_interleaved = dci_cfg.vrb_to_prb_mapping > 0;
  // See TS38.213, 10.1.
  pdsch.ss_set_type = ss_cfg.type == search_space_configuration::type_t::ue_dedicated
                          ? search_space_set_type::ue_specific
                          : search_space_set_type::type3;
  pdsch.dci_fmt     = dci_dl_format::f1_0;
  // See TS 38.211, 7.3.1.1. - Scrambling.
  const bwp_downlink_dedicated* bwp_dl_ded = ue_cell_cfg.find_dl_bwp_ded(active_bwp_id);
  pdsch.n_id                               = get_pdsch_n_id(cell_cfg.pci, bwp_dl_ded, dci_dl_format::f1_0, ss_cfg.type);

  // One Codeword.
  pdsch.codewords.emplace_back();
  pdsch_codeword& cw             = pdsch.codewords.back();
  cw.rv_index                    = dci_cfg.redundancy_version;
  cw.mcs_index                   = dci_cfg.modulation_coding_scheme;
  cw.mcs_table                   = mcs_table;
  sch_mcs_description mcs_config = pdsch_mcs_get_config(mcs_table, cw.mcs_index);
  cw.mcs_descr                   = mcs_config;
  cw.tb_size_bytes = tbs_calculator_calculate(tbs_calculator_configuration{(unsigned)pdsch.symbols.length(),
                                                                           calculate_nof_dmrs_per_rb(pdsch.dmrs),
                                                                           nof_oh_prb,
                                                                           mcs_config,
                                                                           nof_layers,
                                                                           tb_scaling_field,
                                                                           pdsch.prbs.prbs().length()}) /
                     nof_bits_per_byte;
}

void srsgnb::build_pusch_f0_0_tc_rnti(pusch_information&                   pusch,
                                      rnti_t                               rnti,
                                      const cell_configuration&            cell_cfg,
                                      const dci_0_0_tc_rnti_configuration& dci_cfg,
                                      bool                                 is_new_data)
{
  static constexpr pusch_mcs_table mcs_table        = pusch_mcs_table::qam64;
  static constexpr unsigned        nof_layers       = 1;
  static constexpr unsigned        nof_oh_prb       = 0;
  static constexpr unsigned        tb_scaling_field = 0;

  // TODO.
  pusch.intra_slot_freq_hopping    = false;
  pusch.pusch_second_hop_prb       = 0;
  pusch.tx_direct_current_location = 0;
  pusch.ul_freq_shift_7p5khz       = false;
  pusch.dmrs_hopping_mode          = pusch_information::dmrs_hopping_mode::no_hopping;

  pusch.rnti = rnti;

  // PUSCH resources.
  pusch.bwp_cfg = &cell_cfg.ul_cfg_common.init_ul_bwp.generic_params;
  pusch.prbs    = get_prb_interval(dci_cfg.N_rb_ul_bwp, dci_cfg.frequency_resource);
  pusch.symbols =
      cell_cfg.ul_cfg_common.init_ul_bwp.pusch_cfg_common->pusch_td_alloc_list[dci_cfg.time_resource].symbols;

  // MCS.
  pusch.mcs_table = mcs_table;
  pusch.mcs_index = dci_cfg.modulation_coding_scheme;
  pusch.mcs_descr = pusch_mcs_get_config(pusch.mcs_table, pusch.mcs_index, false);

  // TS 38.214, 6.1.3. - "transform precoding either 'enabled' or 'disabled' according to the higher layer configured
  // parameter msg3-transformPrecoder".
  pusch.transform_precoding = cell_cfg.ul_cfg_common.init_ul_bwp.rach_cfg_common->msg3_transform_precoder;
  // As per TS 38.211, Section 6.3.1.1, n_ID is set to Physical Cell ID for TC-RNTI.
  pusch.n_id          = cell_cfg.pci;
  pusch.nof_layers    = nof_layers;
  pusch.dmrs          = make_dmrs_info_common(*cell_cfg.ul_cfg_common.init_ul_bwp.pusch_cfg_common,
                                     dci_cfg.time_resource,
                                     cell_cfg.pci,
                                     cell_cfg.dmrs_typeA_pos);
  pusch.pusch_dmrs_id = 0;
  pusch.rv_index      = dci_cfg.redundancy_version;
  // TS 38.321, 5.4.2.1 - "For UL transmission with UL grant in RA Response, HARQ process identifier 0 is used".
  pusch.harq_id  = 0;
  pusch.new_data = is_new_data;

  // Calculate TBS
  unsigned tbs_bytes = tbs_calculator_calculate(tbs_calculator_configuration{(unsigned)pusch.symbols.length(),
                                                                             calculate_nof_dmrs_per_rb(pusch.dmrs),
                                                                             nof_oh_prb,
                                                                             pusch.mcs_descr,
                                                                             nof_layers,
                                                                             tb_scaling_field,
                                                                             pusch.prbs.prbs().length()}) /
                       nof_bits_per_byte;
  pusch.tb_size_bytes = tbs_bytes;
  // Set number of CB to zero if no CBs are being used.
  pusch.num_cb = 0;
}

void srsgnb::build_pusch_f0_0_c_rnti(pusch_information&                  pusch,
                                     rnti_t                              rnti,
                                     const cell_configuration&           cell_cfg,
                                     const bwp_uplink_common&            ul_bwp,
                                     const dci_0_0_c_rnti_configuration& dci_cfg,
                                     bool                                is_new_data)
{
  static constexpr pusch_mcs_table mcs_table        = pusch_mcs_table::qam64;
  static constexpr unsigned        nof_layers       = 1;
  static constexpr unsigned        nof_oh_prb       = 0;
  static constexpr unsigned        tb_scaling_field = 0;

  // TODO.
  pusch.intra_slot_freq_hopping    = false;
  pusch.pusch_second_hop_prb       = 0;
  pusch.tx_direct_current_location = 0;
  pusch.ul_freq_shift_7p5khz       = false;
  pusch.dmrs_hopping_mode          = pusch_information::dmrs_hopping_mode::no_hopping;

  pusch.rnti = rnti;

  // PUSCH resources.
  pusch.bwp_cfg = &ul_bwp.generic_params;
  pusch.prbs    = get_prb_interval(dci_cfg.N_rb_ul_bwp, dci_cfg.frequency_resource);
  pusch.symbols = ul_bwp.pusch_cfg_common->pusch_td_alloc_list[dci_cfg.time_resource].symbols;

  // MCS.
  pusch.mcs_table                = mcs_table;
  pusch.mcs_index                = dci_cfg.modulation_coding_scheme;
  sch_mcs_description mcs_config = pusch_mcs_get_config(pusch.mcs_table, pusch.mcs_index, false);
  pusch.mcs_descr                = mcs_config;

  pusch.transform_precoding = cell_cfg.ul_cfg_common.init_ul_bwp.rach_cfg_common->msg3_transform_precoder;
  pusch.n_id                = cell_cfg.pci;
  pusch.dmrs                = make_dmrs_info_common(*cell_cfg.ul_cfg_common.init_ul_bwp.pusch_cfg_common,
                                     dci_cfg.time_resource,
                                     cell_cfg.pci,
                                     cell_cfg.dmrs_typeA_pos);
  pusch.pusch_dmrs_id       = cell_cfg.pci;

  // TBS.
  pusch.nof_layers    = nof_layers;
  pusch.tb_size_bytes = tbs_calculator_calculate(tbs_calculator_configuration{(unsigned)pusch.symbols.length(),
                                                                              calculate_nof_dmrs_per_rb(pusch.dmrs),
                                                                              nof_oh_prb,
                                                                              mcs_config,
                                                                              nof_layers,
                                                                              tb_scaling_field,
                                                                              pusch.prbs.prbs().length()}) /
                        nof_bits_per_byte;
  pusch.num_cb = 0;

  // HARQ.
  pusch.rv_index = dci_cfg.redundancy_version;
  pusch.harq_id  = dci_cfg.harq_process_number;
  pusch.new_data = is_new_data;
}
