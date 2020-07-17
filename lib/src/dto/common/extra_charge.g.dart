// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extra_charge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IntegratorFee _$IntegratorFeeFromJson(Map<String, dynamic> json) {
  return IntegratorFee()
    ..type = _$enumDecodeNullable(_$ExtraChargeTypeEnumMap, json['type'])
    ..amount = json['amount'] as int
    ..description = json['description'] as String;
}

Map<String, dynamic> _$IntegratorFeeToJson(IntegratorFee instance) =>
    <String, dynamic>{
      'type': _$ExtraChargeTypeEnumMap[instance.type],
      'amount': instance.amount,
      'description': instance.description,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ExtraChargeTypeEnumMap = {
  ExtraChargeType.insurance: 'insurance',
  ExtraChargeType.integrator_fee: 'integrator_fee',
};

InsuranceCrossSale _$InsuranceCrossSaleFromJson(Map<String, dynamic> json) {
  return InsuranceCrossSale()
    ..type = _$enumDecodeNullable(_$ExtraChargeTypeEnumMap, json['type'])
    ..insurance_policy_id = json['insurance_policy_id'] as String;
}

Map<String, dynamic> _$InsuranceCrossSaleToJson(InsuranceCrossSale instance) =>
    <String, dynamic>{
      'type': _$ExtraChargeTypeEnumMap[instance.type],
      'insurance_policy_id': instance.insurance_policy_id,
    };
