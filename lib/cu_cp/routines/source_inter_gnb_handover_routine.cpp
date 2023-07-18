/*
 *
 * Copyright 2021-2023 Software Radio Systems Limited
 *
 * By using this file, you agree to the terms and conditions set
 * forth in the LICENSE file which can be found at the top level of
 * the distribution.
 *
 */

#include "source_inter_gnb_handover_routine.h"

using namespace srsran;
using namespace srs_cu_cp;

source_inter_gnb_handover_routine::source_inter_gnb_handover_routine(
    const cu_cp_inter_ngran_node_n2_handover_request& command,
    du_processor_ngap_control_notifier&               ngap_ctrl_notifier_) :
  ngap_ctrl_notifier(ngap_ctrl_notifier_)
{
}

void source_inter_gnb_handover_routine::operator()(
    coro_context<async_task<cu_cp_inter_ngran_node_n2_handover_response>>& ctx)
{
  CORO_BEGIN(ctx);
  CORO_AWAIT_VALUE(ho_prep_result, ngap_ctrl_notifier.on_ngap_handover_preperation_request());
  CORO_RETURN(response);
}
