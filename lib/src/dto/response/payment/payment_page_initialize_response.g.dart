// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_page_initialize_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentPageInitializeResponse _$PaymentPageInitializeResponseFromJson(
    Map<String, dynamic> json) {
  return PaymentPageInitializeResponse()
    ..jsonrpc = json['jsonrpc'] as String
    ..id = json['id'] as int
    ..result = json['result'] == null
        ? null
        : PaymentPageInitializeResponseResult.fromJson(
            json['result'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaymentPageInitializeResponseToJson(
        PaymentPageInitializeResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result?.toJson(),
    };

PaymentPageInitializeResponseResult
    _$PaymentPageInitializeResponseResultFromJson(Map<String, dynamic> json) {
  return PaymentPageInitializeResponseResult()
    ..merchant_id = json['merchant_id'] as int
    ..merchant_reference = json['merchant_reference'] as String
    ..description = json['description'] as String
    ..billing_descriptor = json['billing_descriptor'] as String
    ..metadata = json['metadata'] as Map<String, dynamic>
    ..currency = json['currency'] as String
    ..amount = json['amount'] as int
    ..customers = (json['customers'] as List)
        ?.map((e) =>
            e == null ? null : Customer.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..payment_methods = (json['payment_methods'] as List)
        ?.map((e) => _$enumDecodeNullable(_$PaymentMethodEnumMap, e))
        ?.toList()
    ..create_alias = json['create_alias'] as bool
    ..payment_plan =
        paymentPlanFromJson(json['payment_plan'] as Map<String, dynamic>)
    ..return_urls = json['return_urls'] == null
        ? null
        : ReturnUrls.fromJson(json['return_urls'] as Map<String, dynamic>)
    ..styling = json['styling'] == null
        ? null
        : Styling.fromJson(json['styling'] as Map<String, dynamic>)
    ..language = json['language'] as String
    ..webhooks = (json['webhooks'] as List)
        ?.map((e) =>
            e == null ? null : WebHook.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..value_date = json['value_date'] as String
    ..is_reusable = json['is_reusable'] as bool
    ..expiration_time = json['expiration_time'] as int
    ..extra_charges = extraChargesFromJson(json['extra_charges'] as List)
    ..payment_page_id = json['payment_page_id'] as String
    ..checkout_url = json['checkout_url'] as String
    ..amount_formatted = json['amount_formatted'] as String
    ..transaction_id = json['transaction_id'] as String
    ..is_expired = json['is_expired'] as bool;
}

Map<String, dynamic> _$PaymentPageInitializeResponseResultToJson(
    PaymentPageInitializeResponseResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('merchant_id', instance.merchant_id);
  writeNotNull('merchant_reference', instance.merchant_reference);
  writeNotNull('description', instance.description);
  writeNotNull('billing_descriptor', instance.billing_descriptor);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('currency', instance.currency);
  writeNotNull('amount', instance.amount);
  writeNotNull(
      'customers', instance.customers?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'payment_methods',
      instance.payment_methods
          ?.map((e) => _$PaymentMethodEnumMap[e])
          ?.toList());
  writeNotNull('create_alias', instance.create_alias);
  writeNotNull('payment_plan', paymentPlanToJson(instance.payment_plan));
  writeNotNull('return_urls', instance.return_urls?.toJson());
  writeNotNull('styling', instance.styling?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull(
      'webhooks', instance.webhooks?.map((e) => e?.toJson())?.toList());
  writeNotNull('value_date', instance.value_date);
  writeNotNull('is_reusable', instance.is_reusable);
  writeNotNull('expiration_time', instance.expiration_time);
  writeNotNull('extra_charges', extraChargesToJson(instance.extra_charges));
  val['payment_page_id'] = instance.payment_page_id;
  val['checkout_url'] = instance.checkout_url;
  val['amount_formatted'] = instance.amount_formatted;
  val['transaction_id'] = instance.transaction_id;
  val['is_expired'] = instance.is_expired;
  return val;
}

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

const _$PaymentMethodEnumMap = {
  PaymentMethod.credit_card: 'credit_card',
  PaymentMethod.direct_debit: 'direct_debit',
  PaymentMethod.ideal: 'ideal',
  PaymentMethod.alipay: 'alipay',
  PaymentMethod.sofort: 'sofort',
  PaymentMethod.twint: 'twint',
  PaymentMethod.apple_pay: 'apple_pay',
};
