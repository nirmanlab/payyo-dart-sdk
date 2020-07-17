import 'package:json_annotation/json_annotation.dart';
import 'package:payyo_sdk/payyo_sdk.dart';
import 'package:payyo_sdk/src/dto/common/device.dart';
import 'package:payyo_sdk/src/dto/request/transaction/transaction_attribute.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class TransactionInitiateParams extends RequestParams {
  int merchant_id;
  String merchant_reference;
  String description;
  String billing_descriptor;
  dynamic metadata;
  String currency;
  int amount;
  bool was_dcc_offered;
  String dcc_quote_reference;
  FundingInstrument funding_instrument;
  bool create_alias;
  String value_date;
  @JsonKey(
      name: 'payment_plan',
      toJson: paymentPlanToJson,
      fromJson: paymentPlanFromJson)
  PaymentPlan paymentPlan;
  List<WebHook> webhooks;
  ReturnUrls return_urls;
  Customer customer;
  Device device;
  TransactionAttribute attributes;
  @JsonKey(
      name: 'extra_charges',
      fromJson: extraChargesFromJson,
      toJson: extraChargesToJson)
  List<ExtraCharge> extra_charges;


  @override
  Map<String, dynamic> toJson() {}
}