// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bank _$BankFromJson(Map<String, dynamic> json) {
  return Bank()..bic = json['bic'] as String;
}

Map<String, dynamic> _$BankToJson(Bank instance) => <String, dynamic>{
      'bic': instance.bic,
    };

LastschriftBank _$LastschriftBankFromJson(Map<String, dynamic> json) {
  return LastschriftBank()
    ..bic = json['bic'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$LastschriftBankToJson(LastschriftBank instance) =>
    <String, dynamic>{
      'bic': instance.bic,
      'name': instance.name,
    };

SofortBank _$SofortBankFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['country_code']);
  return SofortBank()..country_code = json['country_code'] as String;
}

Map<String, dynamic> _$SofortBankToJson(SofortBank instance) =>
    <String, dynamic>{
      'country_code': instance.country_code,
    };
