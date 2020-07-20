import 'package:json_annotation/json_annotation.dart';
import 'package:payyo_sdk/src/dto/common/common.dart';
import 'package:payyo_sdk/src/dto/common/customer.dart';
import 'package:payyo_sdk/src/dto/common/payment_plan.dart';
import 'package:payyo_sdk/src/dto/common/return_urls.dart';
import 'package:payyo_sdk/src/dto/common/web_hook.dart';
import 'package:payyo_sdk/src/dto/request/request_params.dart';

part 'payment_page_initialize_request_params.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class PaymentPageInitializeRequestParams extends RequestParams {
  int merchant_id;
  String merchant_reference;
  String description;
  String billing_descriptor;
  Map<String, dynamic> metadata;
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

  @override
  Map<String, dynamic> toJson() =>
      _$PaymentPageInitializeRequestParamsToJson(this);
}
