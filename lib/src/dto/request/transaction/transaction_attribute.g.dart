// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionAttribute _$TransactionAttributeFromJson(Map<String, dynamic> json) {
  return TransactionAttribute()
    ..insurance_policy = json['insurance_policy'] as String
    ..inpayment = json['inpayment'] as String;
}

Map<String, dynamic> _$TransactionAttributeToJson(
        TransactionAttribute instance) =>
    <String, dynamic>{
      'insurance_policy': instance.insurance_policy,
      'inpayment': instance.inpayment,
    };
