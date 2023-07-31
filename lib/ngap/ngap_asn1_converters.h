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

#include "ngap_asn1_utils.h"
#include "srsran/asn1/ngap/ngap_ies.h"
#include "srsran/cu_cp/cu_cp_types.h"
#include "srsran/ngap/ngap_handover.h"

namespace srsran {
namespace srs_cu_cp {

// Helper to create PDU from NGAP message
template <class T>
byte_buffer pack_into_pdu(const T& msg, const char* context_name = nullptr)
{
  context_name = context_name == nullptr ? __FUNCTION__ : context_name;
  byte_buffer   pdu{};
  asn1::bit_ref bref{pdu};
  if (msg.pack(bref) == asn1::SRSASN_ERROR_ENCODE_FAIL) {
    srslog::fetch_basic_logger("NGAP").error("Failed to pack message in {} - discarding it", context_name);
  }
  return pdu;
}

/// \brief  Convert CU-CP security result to NGAP security result.
/// \param security_result The CU-CP security result.
/// \return The NGAP security result.
inline asn1::ngap::security_result_s cu_cp_security_result_to_ngap_security_result(security_result_t security_result)
{
  asn1::ngap::security_result_s ngap_security_result;

  if (security_result.confidentiality_protection_result == "performed") {
    ngap_security_result.confidentiality_protection_result =
        asn1::ngap::confidentiality_protection_result_opts::options::performed;
  } else {
    ngap_security_result.confidentiality_protection_result =
        asn1::ngap::confidentiality_protection_result_opts::options::not_performed;
  }

  if (security_result.integrity_protection_result == "performed") {
    ngap_security_result.integrity_protection_result.value =
        asn1::ngap::integrity_protection_result_opts::options::performed;
  } else {
    ngap_security_result.integrity_protection_result =
        asn1::ngap::integrity_protection_result_opts::options::not_performed;
  }

  return ngap_security_result;
}

/// \brief Convert CU-CP Associated QoS Flow to NGAP Associated QoS Flow Item.
/// \param cu_cp_qos_flow The CU-CP Associated QoS Flow.
/// \return The NGAP Associated QoS Flow Item.
inline asn1::ngap::associated_qos_flow_item_s
cu_cp_assoc_qos_flow_to_ngap_assoc_qos_flow_item(cu_cp_associated_qos_flow cu_cp_qos_flow)
{
  asn1::ngap::associated_qos_flow_item_s asn1_assoc_qos_item;

  asn1_assoc_qos_item.qos_flow_id = qos_flow_id_to_uint(cu_cp_qos_flow.qos_flow_id);

  if (cu_cp_qos_flow.qos_flow_map_ind.has_value()) {
    asn1_assoc_qos_item.qos_flow_map_ind_present = true;

    if (cu_cp_qos_flow.qos_flow_map_ind.value() == cu_cp_qos_flow_map_ind::ul) {
      asn1_assoc_qos_item.qos_flow_map_ind.value =
          asn1::ngap::associated_qos_flow_item_s::qos_flow_map_ind_opts::options::ul;
    } else {
      asn1_assoc_qos_item.qos_flow_map_ind.value =
          asn1::ngap::associated_qos_flow_item_s::qos_flow_map_ind_opts::options::dl;
    }
  }

  return asn1_assoc_qos_item;
}

/// \brief Convert CU-CP QoS Flow Per TNL Info to NGAP QoS Flow Per TNL Info.
/// \param cu_cp_qos_flow_info The CU-CP QoS Flow Per TNL Info.
/// \return The NGAP QoS Flow Per TNL Info.
inline asn1::ngap::qos_flow_per_tnl_info_s
cu_cp_qos_flow_per_tnl_info_to_ngap_qos_flow_per_tnl_info(cu_cp_qos_flow_per_tnl_information cu_cp_qos_flow_info)
{
  asn1::ngap::qos_flow_per_tnl_info_s ngap_qos_flow_info;

  up_transport_layer_info_to_asn1(ngap_qos_flow_info.up_transport_layer_info, cu_cp_qos_flow_info.up_tp_layer_info);

  for (const auto& cu_cp_assoc_qos_item : cu_cp_qos_flow_info.associated_qos_flow_list) {
    asn1::ngap::associated_qos_flow_item_s ngap_assoc_qos_item =
        cu_cp_assoc_qos_flow_to_ngap_assoc_qos_flow_item(cu_cp_assoc_qos_item);

    ngap_qos_flow_info.associated_qos_flow_list.push_back(ngap_assoc_qos_item);
  }

  return ngap_qos_flow_info;
}

/// \brief Convert \c cause_t type to NGAP cause.
/// \param cause The cause_t type.
/// \return The NGAP cause.
inline asn1::ngap::cause_c cause_to_asn1(cause_t cause)
{
  asn1::ngap::cause_c ngap_cause;

  switch (cause) {
    case cause_t::radio_network:
      ngap_cause.set(asn1::ngap::cause_c::types_opts::radio_network);
      break;
    case cause_t::transport:
      ngap_cause.set(asn1::ngap::cause_c::types_opts::transport);
      break;
    case cause_t::protocol:
      ngap_cause.set(asn1::ngap::cause_c::types_opts::protocol);
      break;
    case cause_t::misc:
      ngap_cause.set(asn1::ngap::cause_c::types_opts::misc);
      break;
    default:
      ngap_cause.set(asn1::ngap::cause_c::types_opts::nulltype);
      break;
  }

  return ngap_cause;
}

/// \brief Convert NGAP ASN1 cause to \c cause_t type.
/// \param ngap_cause The ASN1 NGAP cause.
/// \return The cause_t type.
inline cause_t asn1_to_cause(asn1::ngap::cause_c ngap_cause)
{
  cause_t cause;

  switch (ngap_cause.type()) {
    case asn1::ngap::cause_c::types_opts::radio_network:
      cause = cause_t::radio_network;
      break;
    case asn1::ngap::cause_c::types_opts::transport:
      cause = cause_t::transport;
      break;
    case asn1::ngap::cause_c::types_opts::protocol:
      cause = cause_t::protocol;
      break;
    case asn1::ngap::cause_c::types_opts::nas:
      cause = cause_t::nas;
      break;
    case asn1::ngap::cause_c::types_opts::misc:
      cause = cause_t::misc;
      break;
    default:
      cause = cause_t::nulltype;
  }
  return cause;
}

/// \brief Convert CU-CP QoS Flow Failed to Setup Item to NGAP QoS Flow With Cause Item.
/// \param cu_cp_failed_item The CU-CP QoS Flow Failed to Setup Item.
/// \return The NGAP QoS Flow With Cause Item.
inline asn1::ngap::qos_flow_with_cause_item_s cu_cp_qos_flow_failed_to_setup_item_to_ngap_qos_flow_with_cause_item(
    cu_cp_qos_flow_failed_to_setup_item cu_cp_failed_item)
{
  asn1::ngap::qos_flow_with_cause_item_s asn1_failed_item;
  asn1_failed_item.qos_flow_id = qos_flow_id_to_uint(cu_cp_failed_item.qos_flow_id);
  asn1_failed_item.cause       = cause_to_asn1(cu_cp_failed_item.cause);

  return asn1_failed_item;
}

/// \brief Convert CU-CP NRCGI to NR Cell Identity.
/// \param ngap_cgi The NGAP NRCGI.
/// \return The NR Cell Identity.
inline nr_cell_id_t cu_cp_nrcgi_to_nr_cell_identity(asn1::ngap::nr_cgi_s& ngap_cgi)
{
  return ngap_cgi.nr_cell_id.to_number();
}

/// \brief Convert CU-CP NRCGI to NR Cell Identity.
/// \param ngap_cgi The NGAP NRCGI.
/// \return The NR Cell Identity.
inline asn1::ngap::user_location_info_nr_s
cu_cp_user_location_info_to_asn1(const cu_cp_user_location_info_nr& cu_cp_user_location_info)
{
  asn1::ngap::user_location_info_nr_s asn1_user_location_info;

  // add nr cgi
  asn1_user_location_info.nr_cgi.nr_cell_id.from_number(cu_cp_user_location_info.nr_cgi.nci);
  asn1_user_location_info.nr_cgi.plmn_id.from_string(cu_cp_user_location_info.nr_cgi.plmn_hex);
  // add tai
  asn1_user_location_info.tai.plmn_id.from_string(cu_cp_user_location_info.tai.plmn_id);
  asn1_user_location_info.tai.tac.from_number(cu_cp_user_location_info.tai.tac);
  // add timestamp
  if (cu_cp_user_location_info.time_stamp.has_value()) {
    asn1_user_location_info.time_stamp_present = true;
    asn1_user_location_info.time_stamp.from_number(cu_cp_user_location_info.time_stamp.value());
  }

  return asn1_user_location_info;
}

/// \brief Convert ASN.1 cause to a human-readable string.
/// \param cause The ASN.1 cause.
/// \return The humand-readable string.
inline std::string asn1_cause_to_string(const asn1::ngap::cause_c& cause)
{
  std::string cause_str = "";

  switch (cause.type()) {
    case asn1::ngap::cause_c::types_opts::radio_network:
      cause_str = cause.radio_network().to_string();
      break;
    case asn1::ngap::cause_c::types_opts::transport:
      cause_str = cause.transport().to_string();
      break;
    case asn1::ngap::cause_c::types_opts::protocol:
      cause_str = cause.protocol().to_string();
      break;
    case asn1::ngap::cause_c::types_opts::nas:
      cause_str = cause.nas().to_string();
      break;
    case asn1::ngap::cause_c::types_opts::misc:
      cause_str = cause.misc().to_string();
      break;
    default:
      cause_str = "unknown";
      break;
  }

  return cause_str;
}

/// \brief Convert common type Initial Context Setup Response message to NGAP Initial Context Setup Response
/// message.
/// \param[out] resp The ASN1 NGAP Initial Context Setup Response message.
/// \param[in] cu_cp_resp The CU-CP Initial Context Setup Response message.
template <typename template_asn1_item>
inline void pdu_session_res_setup_response_item_to_asn1(template_asn1_item&                             asn1_resp,
                                                        const cu_cp_pdu_session_res_setup_response_item resp)
{
  asn1_resp.pdu_session_id = pdu_session_id_to_uint(resp.pdu_session_id);

  asn1::ngap::pdu_session_res_setup_resp_transfer_s response_transfer;

  // Add dLQosFlowPerTNLInformation
  response_transfer.dl_qos_flow_per_tnl_info = cu_cp_qos_flow_per_tnl_info_to_ngap_qos_flow_per_tnl_info(
      resp.pdu_session_resource_setup_response_transfer.dlqos_flow_per_tnl_info);

  // Add AdditionalDLQosFlowPerTNLInformation
  for (const auto& cu_cp_qos_flow_info :
       resp.pdu_session_resource_setup_response_transfer.add_dl_qos_flow_per_tnl_info) {
    asn1::ngap::qos_flow_per_tnl_info_item_s ngap_qos_flow_info;
    ngap_qos_flow_info.qos_flow_per_tnl_info =
        cu_cp_qos_flow_per_tnl_info_to_ngap_qos_flow_per_tnl_info(cu_cp_qos_flow_info);
    response_transfer.add_dl_qos_flow_per_tnl_info.push_back(ngap_qos_flow_info);
  }

  // Add QosFlowFailedToSetupList
  for (const auto& failed_item : resp.pdu_session_resource_setup_response_transfer.qos_flow_failed_to_setup_list) {
    asn1::ngap::qos_flow_with_cause_item_s asn1_failed_item =
        cu_cp_qos_flow_failed_to_setup_item_to_ngap_qos_flow_with_cause_item(failed_item);
    response_transfer.qos_flow_failed_to_setup_list.push_back(asn1_failed_item);
  }

  // Add SecurityResult
  if (resp.pdu_session_resource_setup_response_transfer.security_result.has_value()) {
    response_transfer.security_result = cu_cp_security_result_to_ngap_security_result(
        resp.pdu_session_resource_setup_response_transfer.security_result.value());
  }

  // Pack pdu_session_res_setup_resp_transfer_s
  byte_buffer pdu = pack_into_pdu(response_transfer);

  asn1_resp.pdu_session_res_setup_resp_transfer.resize(pdu.length());
  std::copy(pdu.begin(), pdu.end(), asn1_resp.pdu_session_res_setup_resp_transfer.begin());
}

/// \brief Convert common type modify response item to ASN1 type message.
/// \param[out] asn1_resp The ASN1 NGAP struct.
/// \param[in] resp The common type struct.
template <typename template_asn1_item>
inline void pdu_session_res_modify_response_item_to_asn1(template_asn1_item& asn1_resp,
                                                         const cu_cp_pdu_session_resource_modify_response_item resp)
{
  asn1_resp.pdu_session_id = pdu_session_id_to_uint(resp.pdu_session_id);

  asn1::ngap::pdu_session_res_modify_resp_transfer_s response_transfer;

  // Add AdditionalDLQosFlowPerTNLInformation
  for (const auto& cu_cp_qos_flow_info : resp.transfer.add_dl_qos_flow_per_tnl_info) {
    asn1::ngap::qos_flow_per_tnl_info_item_s ngap_qos_flow_info;
    ngap_qos_flow_info.qos_flow_per_tnl_info =
        cu_cp_qos_flow_per_tnl_info_to_ngap_qos_flow_per_tnl_info(cu_cp_qos_flow_info);
    response_transfer.add_dl_qos_flow_per_tnl_info.push_back(ngap_qos_flow_info);
  }

  if (resp.transfer.qos_flow_add_or_modify_response_list.has_value()) {
    for (const auto& qos_flow : resp.transfer.qos_flow_add_or_modify_response_list.value()) {
      asn1::ngap::qos_flow_add_or_modify_resp_item_s asn1_item;
      asn1_item.qos_flow_id = qos_flow_id_to_uint(qos_flow.qos_flow_id);
      response_transfer.qos_flow_add_or_modify_resp_list.push_back(asn1_item);
    }
  }

  // Pack pdu_session_res_modify_resp_transfer_s
  byte_buffer pdu = pack_into_pdu(response_transfer);

  asn1_resp.pdu_session_res_modify_resp_transfer.resize(pdu.length());
  std::copy(pdu.begin(), pdu.end(), asn1_resp.pdu_session_res_modify_resp_transfer.begin());
}

/// \brief Convert common type modify response item to ASN1 type message.
/// \param[out] asn1_resp The ASN1 NGAP struct.
/// \param[in] resp The common type struct.
template <typename template_asn1_item>
inline void pdu_session_res_failed_to_modify_item_to_asn1(template_asn1_item& asn1_resp,
                                                          const cu_cp_pdu_session_resource_failed_to_modify_item resp)
{
  asn1_resp.pdu_session_id = pdu_session_id_to_uint(resp.pdu_session_id);

  asn1::ngap::pdu_session_res_modify_unsuccessful_transfer_s response_transfer;
  response_transfer.cause = cause_to_asn1(resp.pdu_session_resource_setup_unsuccessful_transfer.cause);

  // Pack transfer
  byte_buffer pdu = pack_into_pdu(response_transfer);

  asn1_resp.pdu_session_res_modify_unsuccessful_transfer.resize(pdu.length());
  std::copy(pdu.begin(), pdu.end(), asn1_resp.pdu_session_res_modify_unsuccessful_transfer.begin());
}

/// \brief Convert common type Initial Context Setup Response message to NGAP Initial Context Setup Response
/// message.
/// \param[out] resp The ASN1 NGAP Initial Context Setup Response message.
/// \param[in] cu_cp_resp The CU-CP Initial Context Setup Response message.
template <typename template_asn1_item>
inline void pdu_session_res_setup_failed_item_to_asn1(template_asn1_item&                           asn1_resp,
                                                      const cu_cp_pdu_session_res_setup_failed_item resp)
{
  asn1_resp.pdu_session_id = pdu_session_id_to_uint(resp.pdu_session_id);

  asn1::ngap::pdu_session_res_setup_unsuccessful_transfer_s setup_unsuccessful_transfer;
  setup_unsuccessful_transfer.cause = cause_to_asn1(resp.pdu_session_resource_setup_unsuccessful_transfer.cause);

  // TODO: Add crit diagnostics

  // Pack pdu_session_res_setup_unsuccessful_transfer_s
  byte_buffer pdu = pack_into_pdu(setup_unsuccessful_transfer);

  asn1_resp.pdu_session_res_setup_unsuccessful_transfer.resize(pdu.length());
  std::copy(pdu.begin(), pdu.end(), asn1_resp.pdu_session_res_setup_unsuccessful_transfer.begin());
}

/// \brief Convert ASN.1 GUAMI to a common type.
/// \param asn1_guami The ASN.1 GUAMI.
/// \return The common type GUAMI.
inline guami_t asn1_to_guami(const asn1::ngap::guami_s& asn1_guami)
{
  guami_t guami;
  guami.plmn          = asn1_guami.plmn_id.to_string();
  guami.amf_region_id = asn1_guami.amf_region_id.to_number();
  guami.amf_set_id    = asn1_guami.amf_set_id.to_number();
  guami.amf_pointer   = asn1_guami.amf_pointer.to_number();

  return guami;
}

/// \brief Converts type \c security_indication to an ASN.1 type.
/// \param asn1obj ASN.1 object where the result of the conversion is stored.
/// \param security_indication Security Indication IE contents.
inline void security_indication_to_asn1(asn1::ngap::security_ind_s& asn1obj, const security_indication_t& security_ind)
{
  switch (security_ind.integrity_protection_ind) {
    case integrity_protection_indication_t::not_needed:
    case integrity_protection_indication_t::preferred:
    case integrity_protection_indication_t::required:
      asn1obj.integrity_protection_ind.value =
          static_cast<asn1::ngap::integrity_protection_ind_opts::options>(security_ind.integrity_protection_ind);
      break;
    default:
      report_fatal_error("Cannot convert security indication to NGAP type");
  }

  switch (security_ind.confidentiality_protection_ind) {
    case confidentiality_protection_indication_t::not_needed:
    case confidentiality_protection_indication_t::preferred:
    case confidentiality_protection_indication_t::required:
      asn1obj.confidentiality_protection_ind.value =
          static_cast<asn1::ngap::confidentiality_protection_ind_opts::options>(security_ind.integrity_protection_ind);
      break;
    default:
      report_fatal_error("Cannot convert security indication to NGAP type");
  }
}

/// \brief Converts type \c security_indication to an ASN.1 type.
/// \param asn1obj ASN.1 object where the result of the conversion is stored.
/// \param security_indication Security Indication IE contents.
inline void asn1_to_security_indication(security_indication_t& security_ind, const asn1::ngap::security_ind_s& asn1obj)
{
  switch (asn1obj.integrity_protection_ind) {
    case asn1::ngap::integrity_protection_ind_opts::not_needed:
    case asn1::ngap::integrity_protection_ind_opts::preferred:
    case asn1::ngap::integrity_protection_ind_opts::required:
      security_ind.integrity_protection_ind =
          static_cast<integrity_protection_indication_t>(asn1obj.integrity_protection_ind.value);
      break;
    default:
      srslog::fetch_basic_logger("NGAP").error("Cannot convert security indication to NGAP type");
  }

  switch (asn1obj.confidentiality_protection_ind) {
    case asn1::ngap::confidentiality_protection_ind_opts::not_needed:
    case asn1::ngap::confidentiality_protection_ind_opts::preferred:
    case asn1::ngap::confidentiality_protection_ind_opts::required:
      security_ind.confidentiality_protection_ind =
          static_cast<confidentiality_protection_indication_t>(asn1obj.confidentiality_protection_ind.value);
      break;
    default:
      srslog::fetch_basic_logger("NGAP").error("Cannot convert security indication to NGAP type");
  }
}

inline void asn1_to_handov_type(ngap_handov_type& handov_type, const asn1::ngap::handov_type_e& asn1_handov_type)
{
  switch (asn1_handov_type) {
    case asn1::ngap::handov_type_opts::options::intra5gs:
      handov_type = ngap_handov_type::intra5gs;
      break;
    case asn1::ngap::handov_type_opts::options::fivegs_to_eps:
      handov_type = ngap_handov_type::fivegs_to_eps;
      break;
    case asn1::ngap::handov_type_opts::options::eps_to_5gs:
      handov_type = ngap_handov_type::eps_to_5gs;
      break;
    case asn1::ngap::handov_type_opts::options::fivegs_to_utran:
      handov_type = ngap_handov_type::fivegs_to_utran;
      break;
    default:
      // error
      srslog::fetch_basic_logger("NGAP").error("Cannot convert handov type to NGAP type.");
  }
}

inline s_nssai_t ngap_asn1_to_s_nssai(const asn1::ngap::s_nssai_s& asn1_s_nssai)
{
  s_nssai_t s_nssai;
  s_nssai.sst = asn1_s_nssai.sst.to_number();
  if (asn1_s_nssai.sd_present) {
    s_nssai.sd = asn1_s_nssai.sd.to_number();
  }

  return s_nssai;
}

inline cu_cp_tai ngap_asn1_to_tai(const asn1::ngap::tai_s& asn1_tai)
{
  cu_cp_tai tai;
  tai.plmn_id = asn1_tai.plmn_id.to_string();
  tai.tac     = asn1_tai.tac.to_number();

  return tai;
}

inline ngap_expected_ue_behaviour
asn1_to_expected_ue_behaviour(const asn1::ngap::expected_ue_behaviour_s& asn1_ue_behaviour)
{
  ngap_expected_ue_behaviour ue_behaviour;

  // expected ue activity behaviour
  if (asn1_ue_behaviour.expected_ue_activity_behaviour_present) {
    ue_behaviour.expected_ue_activity_behaviour.emplace();
    // expected activity period
    if (asn1_ue_behaviour.expected_ue_activity_behaviour.expected_activity_period_present) {
      ue_behaviour.expected_ue_activity_behaviour.value().expected_activity_period =
          asn1_ue_behaviour.expected_ue_activity_behaviour.expected_activity_period;
    }
    // expected idle period
    if (asn1_ue_behaviour.expected_ue_activity_behaviour.expected_idle_period_present) {
      ue_behaviour.expected_ue_activity_behaviour.value().expected_idle_period =
          asn1_ue_behaviour.expected_ue_activity_behaviour.expected_idle_period;
    }
    // source of ue activity behaviour info
    if (asn1_ue_behaviour.expected_ue_activity_behaviour.source_of_ue_activity_behaviour_info_present) {
      if (asn1_ue_behaviour.expected_ue_activity_behaviour.source_of_ue_activity_behaviour_info ==
          asn1::ngap::source_of_ue_activity_behaviour_info_opts::sub_info) {
        ue_behaviour.expected_ue_activity_behaviour.value().source_of_ue_activity_behaviour_info =
            ngap_source_of_ue_activity_behaviour_info::sub_info;
      } else if (asn1_ue_behaviour.expected_ue_activity_behaviour.source_of_ue_activity_behaviour_info ==
                 asn1::ngap::source_of_ue_activity_behaviour_info_opts::stats) {
        ue_behaviour.expected_ue_activity_behaviour.value().source_of_ue_activity_behaviour_info =
            ngap_source_of_ue_activity_behaviour_info::stats;
      }
    }
  }

  // expected ho interv
  if (asn1_ue_behaviour.expected_ho_interv_present) {
    ue_behaviour.expected_ho_interv = asn1_ue_behaviour.expected_ho_interv.to_number();
  }
  return ue_behaviour;
}

inline ngap_core_network_assist_info_for_inactive
asn1_to_core_network_assist_info_for_inactive(const asn1::ngap::core_network_assist_info_for_inactive_s& asn1_cn_assist)
{
  ngap_core_network_assist_info_for_inactive cn_assist;

  // ue id idx value
  cn_assist.ue_id_idx_value = asn1_cn_assist.ue_id_idx_value.idx_len10().to_number();
  if (asn1_cn_assist.ue_specific_drx_present) {
    cn_assist.ue_specific_drx = asn1_cn_assist.ue_specific_drx.to_number();
  }

  // periodic regist upd timer
  cn_assist.periodic_regist_upd_timer = asn1_cn_assist.periodic_regist_upd_timer.to_number();

  // mico mode ind
  if (asn1_cn_assist.mico_mode_ind_present) {
    cn_assist.mico_mode_ind = asn1::enum_to_bool(asn1_cn_assist.mico_mode_ind);
  }

  // tai list for inactive
  for (const auto& tai : asn1_cn_assist.tai_list_for_inactive) {
    cn_assist.tai_list_for_inactive.push_back(ngap_asn1_to_tai(tai.tai));
  }

  // expected ue behaviour
  if (asn1_cn_assist.expected_ue_behaviour_present) {
    cn_assist.expected_ue_behaviour = asn1_to_expected_ue_behaviour(asn1_cn_assist.expected_ue_behaviour);
  }

  return cn_assist;
}

inline bool asn1_to_security_context(security::security_context&           sec_ctxt,
                                     const asn1::ngap::ue_security_cap_s&  asn1_sec_cap,
                                     const asn1::ngap::security_context_s& asn1_sec_ctxt)
{
  // TODO: Handle next_hop_chaining_count
  copy_asn1_key(sec_ctxt.k, asn1_sec_ctxt.next_hop_nh);
  fill_supported_algorithms(sec_ctxt.supported_int_algos, asn1_sec_cap.nr_integrity_protection_algorithms);
  fill_supported_algorithms(sec_ctxt.supported_enc_algos, asn1_sec_cap.nr_encryption_algorithms);
  srslog::fetch_basic_logger("NGAP").debug(asn1_sec_ctxt.next_hop_nh.data(), 32, "K_gnb");
  srslog::fetch_basic_logger("NGAP").debug("Supported integrity algorithms: {}", sec_ctxt.supported_int_algos);
  srslog::fetch_basic_logger("NGAP").debug("Supported ciphering algorithms: {}", sec_ctxt.supported_enc_algos);

  return true;
}

inline ngap_trace_activation asn1_to_trace_activation(const asn1::ngap::trace_activation_s& asn1_trace_activation)
{
  ngap_trace_activation trace_activation;

  // ngran trace id
  trace_activation.ngran_trace_id = asn1_trace_activation.ngran_trace_id.to_number();

  // interfaces to trace
  trace_activation.interfaces_to_trace = asn1_trace_activation.interfaces_to_trace.to_number();

  // trace depth
  switch (asn1_trace_activation.trace_depth) {
    case asn1::ngap::trace_depth_opts::options::minimum:
      trace_activation.trace_depth = ngap_trace_depth::minimum;
      break;
    case asn1::ngap::trace_depth_opts::options::medium:
      trace_activation.trace_depth = ngap_trace_depth::medium;
      break;
    case asn1::ngap::trace_depth_opts::options::max:
      trace_activation.trace_depth = ngap_trace_depth::max;
      break;
    case asn1::ngap::trace_depth_opts::options::minimum_without_vendor_specific_ext:
      trace_activation.trace_depth = ngap_trace_depth::minimum_without_vendor_specific_ext;
      break;
    case asn1::ngap::trace_depth_opts::options::medium_without_vendor_specific_ext:
      trace_activation.trace_depth = ngap_trace_depth::medium_without_vendor_specific_ext;
      break;
    case asn1::ngap::trace_depth_opts::options::max_without_vendor_specific_ext:
      trace_activation.trace_depth = ngap_trace_depth::max_without_vendor_specific_ext;
      break;
    default:
      // error
      srslog::fetch_basic_logger("NGAP").error("Cannot convert ASN.1 trace depth to NGAP type.");
  }

  // trace collection entity ip address
  trace_activation.trace_collection_entity_ip_address =
      asn1_trace_activation.trace_collection_entity_ip_address.to_number();

  return trace_activation;
}

/// \brief Convert NGAP ASN.1 to \c nr_cell_global_id_t.
/// \param[in] asn1_nr_cgi The ASN.1 type nr cgi.
/// \return The common type nr cgi.
inline nr_cell_global_id_t ngap_asn1_to_nr_cgi(const asn1::ngap::nr_cgi_s& asn1_nr_cgi)
{
  nr_cell_global_id_t nr_cgi;

  // nr cell id
  nr_cgi.nci = asn1_nr_cgi.nr_cell_id.to_number();

  // plmn id
  nr_cgi.plmn_hex = asn1_nr_cgi.plmn_id.to_string();

  return nr_cgi;
}

inline void asn1_to_source_to_target_transport_container(
    ngap_source_ngran_node_to_target_ngran_node_transparent_container&                container,
    const asn1::ngap::source_ngran_node_to_target_ngran_node_transparent_container_s& asn1_container)
{
  // rrc container
  container.rrc_container = asn1_container.rrc_container.copy();

  // pdu session res info list
  for (const auto& asn1_pdu_info_item : asn1_container.pdu_session_res_info_list) {
    ngap_pdu_session_res_info_item pdu_info_item;

    // pdu session id
    pdu_info_item.pdu_session_id = uint_to_pdu_session_id(asn1_pdu_info_item.pdu_session_id);

    // qos flow info list
    for (const auto& asn1_qos_flow : asn1_pdu_info_item.qos_flow_info_list) {
      ngap_qos_flow_info_item qos_flow;
      // qos flow id
      qos_flow.qos_flow_id = uint_to_qos_flow_id(asn1_qos_flow.qos_flow_id);

      // dl forwarding
      if (asn1_qos_flow.dl_forwarding_present) {
        qos_flow.dl_forwarding = asn1::enum_to_bool(asn1_qos_flow.dl_forwarding);
      }

      pdu_info_item.qos_flow_info_list.push_back(qos_flow);
    }

    // drbs to qos flow map list
    for (const auto& asn1_drbs_to_qos_flow_map : asn1_pdu_info_item.drbs_to_qos_flows_map_list) {
      ngap_drbs_to_qos_flows_map_item drbs_to_qos_flow_map;

      // drb id
      drbs_to_qos_flow_map.drb_id = uint_to_drb_id(asn1_drbs_to_qos_flow_map.drb_id);

      // associated qos flow list
      for (const auto& asn1_assoc_qos_flow : asn1_drbs_to_qos_flow_map.associated_qos_flow_list) {
        cu_cp_associated_qos_flow assoc_qos_flow;

        // qos flow id
        assoc_qos_flow.qos_flow_id = uint_to_qos_flow_id(asn1_assoc_qos_flow.qos_flow_id);

        // qos flow map ind
        if (asn1_assoc_qos_flow.qos_flow_map_ind_present) {
          if (asn1_assoc_qos_flow.qos_flow_map_ind ==
              asn1::ngap::associated_qos_flow_item_s::qos_flow_map_ind_opts::options::ul) {
            assoc_qos_flow.qos_flow_map_ind = cu_cp_qos_flow_map_ind::ul;
          } else if (asn1_assoc_qos_flow.qos_flow_map_ind ==
                     asn1::ngap::associated_qos_flow_item_s::qos_flow_map_ind_opts::options::dl) {
            assoc_qos_flow.qos_flow_map_ind = cu_cp_qos_flow_map_ind::dl;
          }
        }

        drbs_to_qos_flow_map.associated_qos_flow_list.push_back(assoc_qos_flow);
      }

      pdu_info_item.drbs_to_qos_flows_map_list.push_back(drbs_to_qos_flow_map);
    }

    container.pdu_session_res_info_list.push_back(pdu_info_item);
  }

  // erab info list
  for (const auto& asn1_erab_info_item : asn1_container.erab_info_list) {
    ngap_erab_info_item erab_info_item;

    // erab id
    erab_info_item.erab_id = asn1_erab_info_item.erab_id;

    // dl forwarding
    if (asn1_erab_info_item.dl_forwarding_present) {
      erab_info_item.dl_forwarding = asn1::enum_to_bool(asn1_erab_info_item.dl_forwarding);
    }

    container.erab_info_list.push_back(erab_info_item);
  }

  // target cell id
  container.target_cell_id = ngap_asn1_to_nr_cgi(asn1_container.target_cell_id.nr_cgi());

  // idx to rfsp
  if (asn1_container.idx_to_rfsp_present) {
    container.idx_to_rfsp = asn1_container.idx_to_rfsp;
  }

  // ue history info
  for (const auto& asn1_last_item : asn1_container.ue_history_info) {
    ngap_last_visited_cell_item last_item;

    const auto& asn1_cell_info = asn1_last_item.last_visited_cell_info.ngran_cell();

    // last visited cell info
    // global cell id
    last_item.last_visited_cell_info.global_cell_id = ngap_asn1_to_nr_cgi(asn1_cell_info.global_cell_id.nr_cgi());

    // cell type
    // cell size
    switch (asn1_cell_info.cell_type.cell_size) {
      case asn1::ngap::cell_size_opts::options::verysmall:
        last_item.last_visited_cell_info.cell_type.cell_size = ngap_cell_size::verysmall;
        break;
      case asn1::ngap::cell_size_opts::options::small:
        last_item.last_visited_cell_info.cell_type.cell_size = ngap_cell_size::small;
        break;
      case asn1::ngap::cell_size_opts::options::medium:
        last_item.last_visited_cell_info.cell_type.cell_size = ngap_cell_size::medium;
        break;
      case asn1::ngap::cell_size_opts::options::large:
        last_item.last_visited_cell_info.cell_type.cell_size = ngap_cell_size::large;
        break;
      default:
        // error
        srslog::fetch_basic_logger("NGAP").error("Cannot convert ASN.1 cell size to NGAP type.");
    }

    // time ue stayed in cell
    last_item.last_visited_cell_info.time_ue_stayed_in_cell = asn1_cell_info.time_ue_stayed_in_cell;

    // time ue stayed in cell enhanced granularity
    if (asn1_cell_info.time_ue_stayed_in_cell_enhanced_granularity_present) {
      last_item.last_visited_cell_info.time_ue_stayed_in_cell_enhanced_granularity =
          asn1_cell_info.time_ue_stayed_in_cell_enhanced_granularity;
    }

    // ho cause value
    if (asn1_cell_info.ho_cause_value_present) {
      last_item.last_visited_cell_info.ho_cause_value = asn1_to_cause(asn1_cell_info.ho_cause_value);
    }

    container.ue_history_info.push_back(last_item);
  }
}

inline ngap_mob_restrict_list asn1_to_mob_restrict_list(const asn1::ngap::mob_restrict_list_s& asn1_mob_list)
{
  ngap_mob_restrict_list mob_list;

  // serving plmn
  mob_list.serving_plmn = asn1_mob_list.serving_plmn.to_string();

  // equivalent plmns
  for (const auto& asn1_plmn : asn1_mob_list.equivalent_plmns) {
    mob_list.equivalent_plmns.push_back(asn1_plmn.to_string());
  }

  // rat restricts
  for (const auto& asn1_rat_restrict : asn1_mob_list.rat_restricts) {
    ngap_rat_restrict_item rat_restrict;
    rat_restrict.plmn_id           = asn1_rat_restrict.plmn_id.to_string();
    rat_restrict.rat_restrict_info = asn1_rat_restrict.rat_restrict_info.to_number();
    mob_list.rat_restricts.push_back(rat_restrict);
  }

  // forbidden area info
  for (const auto& asn1_forbidden_item : asn1_mob_list.forbidden_area_info) {
    ngap_forbidden_area_info_item forbidden_item;
    forbidden_item.plmn_id = asn1_forbidden_item.plmn_id.to_string();
    for (const auto& asn1_tacs : asn1_forbidden_item.forbidden_tacs) {
      forbidden_item.forbidden_tacs.push_back(asn1_tacs.to_number());
    }
    mob_list.forbidden_area_info.push_back(forbidden_item);
  }

  // service area info
  for (const auto& asn1_service_item : asn1_mob_list.service_area_info) {
    ngap_service_area_info_item service_item;
    service_item.plmn_id = asn1_service_item.plmn_id.to_string();
    for (const auto& asn1_tacs : asn1_service_item.allowed_tacs) {
      service_item.allowed_tacs.push_back(asn1_tacs.to_number());
    }
    for (const auto& asn1_tacs : asn1_service_item.not_allowed_tacs) {
      service_item.not_allowed_tacs.push_back(asn1_tacs.to_number());
    }
    mob_list.service_area_info.push_back(service_item);
  }

  return mob_list;
}

/// \brief Convert NGAP ASN.1 to \c cu_cp_global_gnb_id.
/// \param[in] asn1_gnb_id The ASN.1 type global gnb id.
/// \return The common type global gnb id.
inline cu_cp_global_gnb_id ngap_asn1_to_global_gnb_id(const asn1::ngap::global_gnb_id_s& asn1_gnb_id)
{
  cu_cp_global_gnb_id gnb_id;

  // plmn id
  gnb_id.plmn_id = asn1_gnb_id.plmn_id.to_string();

  // gnb id
  gnb_id.gnb_id = asn1_gnb_id.gnb_id.gnb_id().to_string();

  return gnb_id;
}

inline ngap_location_report_request_type
asn1_to_location_report_request_type(const asn1::ngap::location_report_request_type_s& asn1_req_type)
{
  ngap_location_report_request_type req_type;

  // event type
  switch (asn1_req_type.event_type) {
    case asn1::ngap::event_type_opts::options::direct:
      req_type.event_type = ngap_event_type::direct;
      break;
    case asn1::ngap::event_type_opts::options::change_of_serve_cell:
      req_type.event_type = ngap_event_type::change_of_serve_cell;
      break;
    case asn1::ngap::event_type_opts::options::ue_presence_in_area_of_interest:
      req_type.event_type = ngap_event_type::ue_presence_in_area_of_interest;
      break;
    case asn1::ngap::event_type_opts::options::stop_change_of_serve_cell:
      req_type.event_type = ngap_event_type::stop_change_of_serve_cell;
      break;
    case asn1::ngap::event_type_opts::options::stop_ue_presence_in_area_of_interest:
      req_type.event_type = ngap_event_type::stop_ue_presence_in_area_of_interest;
      break;
    case asn1::ngap::event_type_opts::options::cancel_location_report_for_the_ue:
      req_type.event_type = ngap_event_type::cancel_location_report_for_the_ue;
      break;
    default:
      // error
      srslog::fetch_basic_logger("NGAP").error("Cannot convert ASN.1 event type to NGAP type.");
  }

  // report area
  req_type.report_area = asn1::enum_to_bool(asn1_req_type.report_area);

  // area of interest list
  for (const auto& asn1_area_item : asn1_req_type.area_of_interest_list) {
    ngap_area_of_interest_item area_item;

    // area of interest
    // area of interest tai list
    for (const auto& asn1_tai : asn1_area_item.area_of_interest.area_of_interest_tai_list) {
      area_item.area_of_interest.area_of_interest_tai_list.push_back(ngap_asn1_to_tai(asn1_tai.tai));
    }
    // area of interest cell list
    for (const auto& asn1_cell : asn1_area_item.area_of_interest.area_of_interest_cell_list) {
      area_item.area_of_interest.area_of_interest_cell_list.push_back(
          ngap_asn1_to_nr_cgi(asn1_cell.ngran_cgi.nr_cgi()));
    }
    // area of interest ran node list
    for (const auto& asn1_ran_node : asn1_area_item.area_of_interest.area_of_interest_ran_node_list) {
      area_item.area_of_interest.area_of_interest_ran_node_list.push_back(
          ngap_asn1_to_global_gnb_id(asn1_ran_node.global_ran_node_id.global_gnb_id()));
    }

    req_type.area_of_interest_list.push_back(area_item);
  }

  // location report ref id to be cancelled
  if (asn1_req_type.location_report_ref_id_to_be_cancelled_present) {
    req_type.location_report_ref_id_to_be_cancelled = asn1_req_type.location_report_ref_id_to_be_cancelled;
  }

  return req_type;
}

} // namespace srs_cu_cp
} // namespace srsran
