// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecurringPaymentPlan _$RecurringPaymentPlanFromJson(Map<String, dynamic> json) {
  return RecurringPaymentPlan()
    ..type = _$enumDecodeNullable(_$PaymentPlanTypeEnumMap, json['type']);
}

Map<String, dynamic> _$RecurringPaymentPlanToJson(
        RecurringPaymentPlan instance) =>
    <String, dynamic>{
      'type': _$PaymentPlanTypeEnumMap[instance.type],
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

const _$PaymentPlanTypeEnumMap = {
  PaymentPlanType.recurring_payment: 'recurring_payment',
  PaymentPlanType.installments: 'installments',
  PaymentPlanType.subscription: 'subscription',
};

SubscriptionPaymentPlan _$SubscriptionPaymentPlanFromJson(
    Map<String, dynamic> json) {
  return SubscriptionPaymentPlan()
    ..type = _$enumDecodeNullable(_$PaymentPlanTypeEnumMap, json['type'])
    ..interval =
        _$enumDecodeNullable(_$SubscriptionIntervalEnumMap, json['interval'])
    ..start_date = json['start_date'] as String;
}

Map<String, dynamic> _$SubscriptionPaymentPlanToJson(
        SubscriptionPaymentPlan instance) =>
    <String, dynamic>{
      'type': _$PaymentPlanTypeEnumMap[instance.type],
      'interval': _$SubscriptionIntervalEnumMap[instance.interval],
      'start_date': instance.start_date,
    };

const _$SubscriptionIntervalEnumMap = {
  SubscriptionInterval.daily: 'daily',
  SubscriptionInterval.weekly: 'weekly',
  SubscriptionInterval.bi_weekly: 'bi_weekly',
  SubscriptionInterval.monthly: 'monthly',
  SubscriptionInterval.yearly: 'yearly',
};

InstallmentPaymentPlan _$InstallmentPaymentPlanFromJson(
    Map<String, dynamic> json) {
  return InstallmentPaymentPlan()
    ..type = _$enumDecodeNullable(_$PaymentPlanTypeEnumMap, json['type'])
    ..installments = (json['installments'] as List)
        ?.map((e) => e == null
            ? null
            : PaymentInstallment.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$InstallmentPaymentPlanToJson(
        InstallmentPaymentPlan instance) =>
    <String, dynamic>{
      'type': _$PaymentPlanTypeEnumMap[instance.type],
      'installments': instance.installments,
    };

PaymentInstallment _$PaymentInstallmentFromJson(Map<String, dynamic> json) {
  return PaymentInstallment()
    ..due_date = json['due_date'] as String
    ..amount = json['amount'] as int
    ..description = json['description'] as String;
}

Map<String, dynamic> _$PaymentInstallmentToJson(PaymentInstallment instance) =>
    <String, dynamic>{
      'due_date': instance.due_date,
      'amount': instance.amount,
      'description': instance.description,
    };
