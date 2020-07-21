// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_capture_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionCaptureParams _$TransactionCaptureParamsFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['transaction_id']);
  return TransactionCaptureParams()
    ..transaction_id = json['transaction_id'] as String
    ..amount = json['amount'] as int
    ..paymentPlan =
        paymentPlanFromJson(json['payment_plan'] as Map<String, dynamic>)
    ..payments = (json['payments'] as List)
        ?.map((e) =>
            e == null ? null : Payment.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TransactionCaptureParamsToJson(
    TransactionCaptureParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transaction_id', instance.transaction_id);
  writeNotNull('amount', instance.amount);
  writeNotNull('payment_plan', paymentPlanToJson(instance.paymentPlan));
  writeNotNull(
      'payments', instance.payments?.map((e) => e?.toJson())?.toList());
  return val;
}
