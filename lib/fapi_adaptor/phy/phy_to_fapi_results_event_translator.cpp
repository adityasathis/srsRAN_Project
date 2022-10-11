/*
 *
 * Copyright 2013-2022 Software Radio Systems Limited
 *
 * By using this file, you agree to the terms and conditions set
 * forth in the LICENSE file which can be found at the top level of
 * the distribution.
 *
 */

#include "phy_to_fapi_results_event_translator.h"
#include "srsgnb/fapi/message_builders.h"
#include "srsgnb/fapi/message_validators.h"
#include "srsgnb/support/math_utils.h"

using namespace srsgnb;
using namespace fapi_adaptor;

namespace {

class slot_data_message_notifier_dummy : public fapi::slot_data_message_notifier
{
public:
  void on_dl_tti_response(const fapi::dl_tti_response_message& msg) override {}
  void on_rx_data_indication(const fapi::rx_data_indication_message& msg) override {}
  void on_crc_indication(const fapi::crc_indication_message& msg) override {}
  void on_uci_indication(const fapi::uci_indication_message& msg) override {}
  void on_srs_indication(const fapi::srs_indication_message& msg) override {}
  void on_rach_indication(const fapi::rach_indication_message& msg) override {}
};

} // namespace

/// This dummy object is passed to the constructor of the PHY-to-FAPI data event translator as a placeholder for the
/// actual data-specific notifier, which will be later set up through the \ref set_slot_data_message_notifier() method.
static slot_data_message_notifier_dummy dummy_data_notifier;

phy_to_fapi_results_event_translator::phy_to_fapi_results_event_translator() :
  data_notifier(dummy_data_notifier), logger(srslog::fetch_basic_logger("FAPI"))
{
  logger.set_level(srslog::basic_levels::info);
}

void phy_to_fapi_results_event_translator::on_new_prach_results(const ul_prach_results& result)
{
  if (result.result.preambles.empty()) {
    return;
  }

  fapi::rach_indication_message         msg;
  fapi::rach_indication_message_builder builder(msg);

  slot_point slot = result.context.slot;
  builder.set_basic_parameters(slot.sfn(), slot.slot_index());

  // NOTE: Currently not managing handle.
  static constexpr unsigned handle = 0U;
  // NOTE: Currently not supporting PRACH multiplexed in frequency domain.
  static constexpr unsigned fd_ra_index = 0U;
  // NOTE: Clamp values defined in SCF-222 v4.0 Section 3.4.11 Table RACH.indication message body.
  static constexpr float            MIN_AVG_RSSI_VALUE = -140.F;
  static constexpr float            MAX_AVG_RSSI_VALUE = 30.F;
  fapi::rach_indication_pdu_builder builder_pdu =
      builder.add_pdu(handle,
                      result.context.start_symbol,
                      slot.slot_index(),
                      fd_ra_index,
                      clamp(result.result.rssi_dB, MIN_AVG_RSSI_VALUE, MAX_AVG_RSSI_VALUE),
                      {},
                      {});

  for (const auto& preamble : result.result.preambles) {
    // NOTE: Clamp values defined in SCF-222 v4.0 Section 3.4.11 Table RACH.indication message body.
    static constexpr float MIN_PREAMBLE_POWER_VALUE = -140.F;
    static constexpr float MAX_PREAMBLE_POWER_VALUE = 30.F;
    static constexpr float MIN_PREAMBLE_SNR_VALUE   = -64.F;
    static constexpr float MAX_PREAMBLE_SNR_VALUE   = 63.F;

    builder_pdu.add_preamble(preamble.preamble_index,
                             {},
                             preamble.time_advance.to_seconds() * 1e9,
                             clamp(preamble.power_dB, MIN_PREAMBLE_POWER_VALUE, MAX_PREAMBLE_POWER_VALUE),
                             clamp(preamble.snr_dB, MIN_PREAMBLE_SNR_VALUE, MAX_PREAMBLE_SNR_VALUE));

    logger.info("Processing RACH with preamble index={}, power={}dB, time advance={}s, in SFN={}, slot={}\n",
                preamble.preamble_index,
                preamble.power_dB,
                preamble.time_advance.to_seconds(),
                result.context.slot.sfn(),
                result.context.slot.slot_index());
  }

  error_type<fapi::validator_report> validation_result = validate_rach_indication(msg);
  if (!validation_result) {
    log_validator_report(validation_result.error());
    return;
  }

  data_notifier.get().on_rach_indication(msg);
}

void phy_to_fapi_results_event_translator::on_new_pusch_results(const ul_pusch_results& result)
{
  if (result.data.has_value()) {
    notify_crc_indication(result);
    notify_rx_data_indication(result);
  }

  // :TODO: UCI.
}

void phy_to_fapi_results_event_translator::notify_crc_indication(const ul_pusch_results& result)
{
  fapi::crc_indication_message         msg;
  fapi::crc_indication_message_builder builder(msg);

  builder.set_basic_parameters(result.slot.sfn(), result.slot.slot_index());

  // Handle is not supported for now.
  unsigned handle = 0;
  // CB CRC status is not supported for now.
  unsigned                            num_cb = 0;
  const ul_pusch_results::pusch_data& data   = result.data.value();
  // :TODO: fill the power parameters when they are valid.
  builder.add_pdu(handle,
                  data.rnti,
                  optional<uint8_t>(),
                  data.harq_id,
                  data.decoder_result.tb_crc_ok,
                  num_cb,
                  {},
                  {},
                  {},
                  optional<int>(result.csi.time_alignment.to_seconds() * 1e9),
                  {},
                  {});

  error_type<fapi::validator_report> validation_result = validate_crc_indication(msg);
  if (!validation_result) {
    log_validator_report(validation_result.error());
    return;
  }

  data_notifier.get().on_crc_indication(msg);
}

void phy_to_fapi_results_event_translator::notify_rx_data_indication(const ul_pusch_results& result)
{
  fapi::rx_data_indication_message         msg;
  fapi::rx_data_indication_message_builder builder(msg);

  // Uplink CP/UP plane separation is not supported for now.
  unsigned control_length = 0;
  builder.set_basic_parameters(result.slot.sfn(), result.slot.slot_index(), control_length);

  // Handle is not supported for now.
  unsigned                            handle = 0;
  const ul_pusch_results::pusch_data& data   = result.data.value();
  builder.add_custom_pdu(handle, data.rnti, optional<unsigned>(), data.harq_id, data.payload);

  error_type<fapi::validator_report> validation_result = validate_rx_data_indication(msg);
  if (!validation_result) {
    log_validator_report(validation_result.error());
    return;
  }

  data_notifier.get().on_rx_data_indication(msg);
}

void phy_to_fapi_results_event_translator::on_new_pucch_results(const ul_pucch_results& result)
{
  fapi::uci_indication_message         msg;
  fapi::uci_indication_message_builder builder(msg);

  builder.set_basic_parameters(result.slot.sfn(), result.slot.slot_index());

  // Do not use the handle for now.
  static const unsigned handle = 0;

  if (result.format == pucch_format::FORMAT_0 || result.format == pucch_format::FORMAT_1) {
    fapi::uci_pucch_pdu_format_0_1_builder builder_format01 =
        builder.add_format_0_1_pucch_pdu(handle, result.rnti, result.format);

    const channel_state_information& csi_info = result.processor_result.csi;
    builder_format01.set_metrics_parameters(
        {csi_info.sinr_dB}, {}, {static_cast<int>(csi_info.time_alignment.to_seconds() * 1e9)}, {}, {csi_info.rsrp_dB});

    builder_format01.set_harq_parameters({}, result.processor_result.message.harq_ack);

    // :TODO: Add SR.
  } else {
    // :TODO: add the rest of the formats.
  }

  error_type<fapi::validator_report> validation_result = validate_uci_indication(msg);
  if (!validation_result) {
    log_validator_report(validation_result.error());
    return;
  }

  data_notifier.get().on_uci_indication(msg);
}
