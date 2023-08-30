/*
 *
 * Copyright 2021-2023 Software Radio Systems Limited
 *
 * By using this file, you agree to the terms and conditions set
 * forth in the LICENSE file which can be found at the top level of
 * the distribution.
 *
 */

#pragma once

#include "../../../phy_test_utils.h"
#include "pusch_decoder_buffer_test_doubles.h"
#include "srsran/phy/upper/channel_processors/channel_processor_factories.h"
#include "srsran/phy/upper/channel_processors/pusch/pusch_decoder_buffer.h"
#include "srsran/phy/upper/channel_processors/pusch/pusch_decoder_notifier.h"

namespace srsran {

class pusch_decoder_spy : public pusch_decoder
{
public:
  struct entry_t {
    span<uint8_t>            transport_block;
    pusch_decoder_result     stats;
    rx_softbuffer*           soft_codeword;
    pusch_decoder_buffer_spy input;
    configuration            config;
    pusch_decoder_notifier*  notifier;
  };

  void set_codeword_length(unsigned codeword_length_) { codeword_length = codeword_length_; }

  pusch_decoder_buffer& new_data(span<uint8_t>           transport_block,
                                 rx_softbuffer&          softbuffer,
                                 pusch_decoder_notifier& notifier,
                                 const configuration&    cfg) override
  {
    entries.emplace_back();
    entry_t& entry        = entries.back();
    entry.transport_block = transport_block;
    entry.stats           = {};
    entry.soft_codeword   = &softbuffer;
    entry.input.resize(codeword_length);
    entry.notifier = &notifier;
    entry.config   = cfg;

    entry.stats.tb_crc_ok            = true;
    entry.stats.nof_codeblocks_total = 123;
    entry.stats.ldpc_decoder_stats   = {};
    entry.notifier->on_sch_data(entry.stats);

    return entry.input;
  }

  const std::vector<entry_t>& get_entries() const { return entries; }

  void clear() { entries.clear(); }

private:
  unsigned             codeword_length;
  std::vector<entry_t> entries;
};

PHY_SPY_FACTORY_TEMPLATE(pusch_decoder);

} // namespace srsran