/*
 *
 * Copyright 2021-2023 Software Radio Systems Limited
 *
 * By using this file, you agree to the terms and conditions set
 * forth in the LICENSE file which can be found at the top level of
 * the distribution.
 *
 */

#include "ofh_uplink_request_handler_impl.h"

using namespace srsran;
using namespace ofh;

uplink_request_handler_impl::uplink_request_handler_impl(uplink_request_handler_impl_config&& config) :
  ul_prach_eaxc(config.ul_prach_eaxc),
  ul_data_eaxc(config.ul_data_eaxc),
  ul_slot_repo_ptr(config.ul_slot_repo),
  ul_prach_repo_ptr(config.ul_prach_repo),
  ul_slot_repo(*ul_slot_repo_ptr),
  ul_prach_repo(*ul_prach_repo_ptr),
  data_flow(std::move(config.data_flow))
{
}

void uplink_request_handler_impl::handle_prach_occasion(const prach_buffer_context& context, prach_buffer& buffer)
{
  // Store the context in the repository.
  ul_prach_context repo_context;
  repo_context.context = context;
  repo_context.buffer  = &buffer;
  ul_prach_repo.add(context.slot, repo_context);

  if (!ul_prach_eaxc.has_value()) {
    return;
  }

  // :TODO: Implement control message for PRACH.
}

void uplink_request_handler_impl::handle_new_uplink_slot(const resource_grid_context& context, resource_grid& grid)
{
  // Store the context in the repository.
  ul_slot_context repo_context;
  repo_context.context = context;
  repo_context.grid    = &grid;
  ul_slot_repo.add(context.slot, repo_context);

  data_flow->enqueue_section_type_1_message(
      context.slot, ul_data_eaxc, data_direction::uplink, filter_index_type::standard_channel_filter);
}
