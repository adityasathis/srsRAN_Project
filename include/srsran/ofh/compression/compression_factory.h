/*
 *
 * Copyright 2013-2022 Software Radio Systems Limited
 *
 * By using this file, you agree to the terms and conditions set
 * forth in the LICENSE file which can be found at the top level of
 * the distribution.
 *
 */

#pragma once

#include "srsran/ofh/compression/iq_compressor.h"
#include "srsran/ofh/compression/iq_decompressor.h"
#include <memory>

namespace srsran {
namespace ofh {

/// \brief Creates and returns an IQ data compressor.
///
/// \param[in] type       Compression type.
/// \param[in] iq_scaling Scaling factor applied to IQ data prior to quantization.
/// \param[in] impl_type  Request for a specific implementation type ("auto", "avx2", "avx512", "generic").
/// \return A pointer to IQ data compressor.
std::unique_ptr<iq_compressor>
create_iq_compressor(compression_type type, float iq_scaling = 1.0, const std::string& impl_type = "auto");

/// Creates and returns a selector of IQ data compressors.
std::unique_ptr<iq_compressor> create_iq_compressor_selector(
    std::array<std::unique_ptr<iq_compressor>, NOF_COMPRESSION_TYPES_SUPPORTED>&& compressors);

/// Creates and returns a decompressor of IQ data.
std::unique_ptr<iq_decompressor> create_iq_decompressor(compression_type type, const std::string& impl_type = "auto");

/// Creates and returns a selector of IQ data decompressors.
std::unique_ptr<iq_decompressor> create_iq_decompressor_selector(
    std::array<std::unique_ptr<iq_decompressor>, NOF_COMPRESSION_TYPES_SUPPORTED>&& decompressors);

} // namespace ofh
} // namespace srsran
