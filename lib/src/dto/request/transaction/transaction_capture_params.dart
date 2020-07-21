import 'package:json_annotation/json_annotation.dart';
import 'package:payyo_sdk/payyo_sdk.dart';
import 'package:payyo_sdk/src/dto/common/payment.dart';

part 'transaction_capture_params.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class TransactionCaptureParams extends RequestParams {
  @JsonKey(required: true)
  String transaction_id;
  int amount;

  @JsonKey(
      name: 'payment_plan',
      toJson: paymentPlanToJson,
      fromJson: paymentPlanFromJson)
  PaymentPlan paymentPlan;

  List<Payment> payments;

  TransactionCaptureParams();

  factory TransactionCaptureParams.fromJson(Map<String, dynamic> jsonMap) =>
      _$TransactionCaptureParamsFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$TransactionCaptureParamsToJson(this);
}
