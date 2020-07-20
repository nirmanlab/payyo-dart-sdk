// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'funding_instrument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardFundingInstrument _$CardFundingInstrumentFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['number', 'expires', 'holder']);
  return CardFundingInstrument()
    ..type = _$enumDecodeNullable(_$FundingInstrumentTypeEnumMap, json['type'])
    ..number = json['number'] as String
    ..expires = json['expires'] as String
    ..cvc = json['cvc'] as String
    ..holder = json['holder'] as String;
}

Map<String, dynamic> _$CardFundingInstrumentToJson(
        CardFundingInstrument instance) =>
    <String, dynamic>{
      'type': _$FundingInstrumentTypeEnumMap[instance.type],
      'number': instance.number,
      'expires': instance.expires,
      'cvc': instance.cvc,
      'holder': instance.holder,
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

const _$FundingInstrumentTypeEnumMap = {
  FundingInstrumentType.credit_card: 'credit_card',
  FundingInstrumentType.credit_card_alias: 'credit_card_alias',
  FundingInstrumentType.direct_debit: 'direct_debit',
  FundingInstrumentType.payworks: 'payworks',
  FundingInstrumentType.ideal: 'ideal',
  FundingInstrumentType.payment_agreement: 'payment_agreement',
  FundingInstrumentType.alipay: 'alipay',
  FundingInstrumentType.sofort: 'sofort',
  FundingInstrumentType.postfinance: 'postfinance',
  FundingInstrumentType.twint: 'twint',
  FundingInstrumentType.apple_pay: 'apple_pay',
};

CardAliasFundingInstrument _$CardAliasFundingInstrumentFromJson(
    Map<String, dynamic> json) {
  return CardAliasFundingInstrument()
    ..type = _$enumDecodeNullable(_$FundingInstrumentTypeEnumMap, json['type'])
    ..alias_id = json['alias_id'] as String
    ..cvc = json['cvc'] as String;
}

Map<String, dynamic> _$CardAliasFundingInstrumentToJson(
        CardAliasFundingInstrument instance) =>
    <String, dynamic>{
      'type': _$FundingInstrumentTypeEnumMap[instance.type],
      'alias_id': instance.alias_id,
      'cvc': instance.cvc,
    };

LastschriftFundingInstrument _$LastschriftFundingInstrumentFromJson(
    Map<String, dynamic> json) {
  return LastschriftFundingInstrument()
    ..type = _$enumDecodeNullable(_$FundingInstrumentTypeEnumMap, json['type'])
    ..holder = json['holder'] == null
        ? null
        : LastschriftHolder.fromJson(json['holder'] as Map<String, dynamic>)
    ..bank = json['bank'] == null
        ? null
        : LastschriftBank.fromJson(json['bank'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LastschriftFundingInstrumentToJson(
        LastschriftFundingInstrument instance) =>
    <String, dynamic>{
      'type': _$FundingInstrumentTypeEnumMap[instance.type],
      'holder': instance.holder?.toJson(),
      'bank': instance.bank?.toJson(),
    };

PayworksFundingInstrument _$PayworksFundingInstrumentFromJson(
    Map<String, dynamic> json) {
  return PayworksFundingInstrument()
    ..type = _$enumDecodeNullable(_$FundingInstrumentTypeEnumMap, json['type'])
    ..transaction_id = json['transaction_id'] as String;
}

Map<String, dynamic> _$PayworksFundingInstrumentToJson(
        PayworksFundingInstrument instance) =>
    <String, dynamic>{
      'type': _$FundingInstrumentTypeEnumMap[instance.type],
      'transaction_id': instance.transaction_id,
    };

IdealFundingInstrument _$IdealFundingInstrumentFromJson(
    Map<String, dynamic> json) {
  return IdealFundingInstrument()
    ..type = _$enumDecodeNullable(_$FundingInstrumentTypeEnumMap, json['type'])
    ..bank = json['bank'] == null
        ? null
        : Bank.fromJson(json['bank'] as Map<String, dynamic>);
}

Map<String, dynamic> _$IdealFundingInstrumentToJson(
        IdealFundingInstrument instance) =>
    <String, dynamic>{
      'type': _$FundingInstrumentTypeEnumMap[instance.type],
      'bank': instance.bank?.toJson(),
    };

PaymentAgreementReferenceFundingInstrument
    _$PaymentAgreementReferenceFundingInstrumentFromJson(
        Map<String, dynamic> json) {
  return PaymentAgreementReferenceFundingInstrument()
    ..type = _$enumDecodeNullable(_$FundingInstrumentTypeEnumMap, json['type'])
    ..payment_agreement_id = json['payment_agreement_id'] as String;
}

Map<String, dynamic> _$PaymentAgreementReferenceFundingInstrumentToJson(
        PaymentAgreementReferenceFundingInstrument instance) =>
    <String, dynamic>{
      'type': _$FundingInstrumentTypeEnumMap[instance.type],
      'payment_agreement_id': instance.payment_agreement_id,
    };

AlipayFundingInstrument _$AlipayFundingInstrumentFromJson(
    Map<String, dynamic> json) {
  return AlipayFundingInstrument()
    ..type = _$enumDecodeNullable(_$FundingInstrumentTypeEnumMap, json['type']);
}

Map<String, dynamic> _$AlipayFundingInstrumentToJson(
        AlipayFundingInstrument instance) =>
    <String, dynamic>{
      'type': _$FundingInstrumentTypeEnumMap[instance.type],
    };

SofortFundingInstrument _$SofortFundingInstrumentFromJson(
    Map<String, dynamic> json) {
  return SofortFundingInstrument()
    ..type = _$enumDecodeNullable(_$FundingInstrumentTypeEnumMap, json['type'])
    ..bank = json['bank'] == null
        ? null
        : SofortBank.fromJson(json['bank'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SofortFundingInstrumentToJson(
        SofortFundingInstrument instance) =>
    <String, dynamic>{
      'type': _$FundingInstrumentTypeEnumMap[instance.type],
      'bank': instance.bank?.toJson(),
    };

PostFinanceFundingInstrument _$PostFinanceFundingInstrumentFromJson(
    Map<String, dynamic> json) {
  return PostFinanceFundingInstrument()
    ..type = _$enumDecodeNullable(_$FundingInstrumentTypeEnumMap, json['type']);
}

Map<String, dynamic> _$PostFinanceFundingInstrumentToJson(
        PostFinanceFundingInstrument instance) =>
    <String, dynamic>{
      'type': _$FundingInstrumentTypeEnumMap[instance.type],
    };

TwintFundingInstrument _$TwintFundingInstrumentFromJson(
    Map<String, dynamic> json) {
  return TwintFundingInstrument()
    ..type = _$enumDecodeNullable(_$FundingInstrumentTypeEnumMap, json['type']);
}

Map<String, dynamic> _$TwintFundingInstrumentToJson(
        TwintFundingInstrument instance) =>
    <String, dynamic>{
      'type': _$FundingInstrumentTypeEnumMap[instance.type],
    };

ApplePayFundingInstrument _$ApplePayFundingInstrumentFromJson(
    Map<String, dynamic> json) {
  return ApplePayFundingInstrument()
    ..type = _$enumDecodeNullable(_$FundingInstrumentTypeEnumMap, json['type']);
}

Map<String, dynamic> _$ApplePayFundingInstrumentToJson(
        ApplePayFundingInstrument instance) =>
    <String, dynamic>{
      'type': _$FundingInstrumentTypeEnumMap[instance.type],
    };
