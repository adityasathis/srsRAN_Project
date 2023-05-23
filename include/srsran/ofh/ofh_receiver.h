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

#include "srsran/ofh/ethernet/ethernet_frame_notifier.h"
#include "srsran/ofh/ofh_ota_symbol_boundary_notifier.h"
#include "srsran/ofh/ofh_symbol_handler.h"

namespace srsran {
namespace ofh {

/// Open Fronthaul receiver interface.
class receiver
{
public:
  virtual ~receiver() = default;

  /// Returns the OTA symbol boundary notifier of this Open Fronthaul receiver.
  virtual ota_symbol_boundary_notifier& get_ota_symbol_notifier() = 0;

  /// Returns the ethernet_frame_notifier of this Open Fronthaul receiver.
  virtual ether::frame_notifier& get_ethernet_frame_notifier() = 0;
};

} // namespace ofh
} // namespace srsran
