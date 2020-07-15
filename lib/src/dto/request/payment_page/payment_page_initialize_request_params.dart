import 'package:json_annotation/json_annotation.dart';
import 'package:payyo_sdk/src/dto/common/customer.dart';
import 'package:payyo_sdk/src/dto/common/json_rpc_request.dart';
import 'package:payyo_sdk/src/dto/common/payment/extra_charge.dart';
import 'package:payyo_sdk/src/dto/common/payment/payment_plan.dart';
import 'package:payyo_sdk/src/dto/common/payment/styling.dart';
import 'package:payyo_sdk/src/dto/common/return_urls.dart';
import 'package:payyo_sdk/src/dto/common/rpc_method.dart';
import 'package:payyo_sdk/src/dto/common/web_hook.dart';
import 'package:payyo_sdk/src/dto/request/request_params.dart';

part 'payment_page_initialize_request_params.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class PaymentPageInitializeRequestParams extends RequestParams {
  int merchant_id;
  String merchant_reference;
  String description;
  String billing_descriptor;
  dynamic metadata;
  String currency;
  int amount;
  List<Customer> customers;
  List<PaymentMethod> payment_methods;
  bool create_alias;
  @JsonKey(
      name: 'payment_plan',
      toJson: paymentPlanToJson,
      fromJson: paymentPlanFromJson)
  PaymentPlan payment_plan;
  ReturnUrls return_urls;
  Styling styling;
  String language;
  List<WebHook> webhooks;
  String value_date;
  bool is_reusable;
  int expiration_time;
  @JsonKey(
      name: 'extra_charges',
      fromJson: extraChargesFromJson,
      toJson: extraChargesToJson)
  List<ExtraCharge> extra_charges;

  PaymentPageInitializeRequestParams();

  factory PaymentPageInitializeRequestParams.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$PaymentPageInitializeRequestParamsFromJson(jsonMap);

  Map<String, dynamic> toJson() =>
      _$PaymentPageInitializeRequestParamsToJson(this);
}

Map<String, dynamic> paymentPlanToJson(PaymentPlan paymentPlan) {
  if (paymentPlan == null) return null;
  return paymentPlan.toJson();
}

PaymentPlan paymentPlanFromJson(Map<String, dynamic> jsonMap) {
  if (jsonMap != null) {
    return PaymentPlan.fromJson(jsonMap);
  }
}

String extraChargesToJson(List<ExtraCharge> extraCharge) {
  if (extraCharge != null && extraCharge.isNotEmpty) {
    return '[${extraCharge.map((e) => e.toJson()).join(',')}]';
  }

  return null;
}

List<ExtraCharge> extraChargesFromJson(List listOfJsonMap) {
  if (listOfJsonMap != null && listOfJsonMap.isNotEmpty) {
    return listOfJsonMap.map((e) => ExtraCharge.fromJson(e)).toList();
  }
}
