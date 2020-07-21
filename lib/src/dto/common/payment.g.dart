// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['merchant_id', 'amount']);
  return Payment()
    ..merchant_id = json['merchant_id'] as int
    ..amount = json['amount'] as int
    ..reference = json['reference'] as String
    ..description = json['description'] as String;
}

Map<String, dynamic> _$PaymentToJson(Payment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('merchant_id', instance.merchant_id);
  writeNotNull('amount', instance.amount);
  writeNotNull('reference', instance.reference);
  writeNotNull('description', instance.description);
  return val;
}
