// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_initiate_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionInitiateParams _$TransactionInitiateParamsFromJson(
    Map<String, dynamic> json) {
  return TransactionInitiateParams()
    ..merchant_id = json['merchant_id'] as int
    ..merchant_reference = json['merchant_reference'] as String
    ..description = json['description'] as String
    ..billing_descriptor = json['billing_descriptor'] as String
    ..metadata = json['metadata']
    ..currency = json['currency'] as String
    ..amount = json['amount'] as int
    ..was_dcc_offered = json['was_dcc_offered'] as bool
    ..dcc_quote_reference = json['dcc_quote_reference'] as String
    ..funding_instrument = fundingInstrumentFromJson(
        json['funding_instrument'] as Map<String, dynamic>)
    ..create_alias = json['create_alias'] as bool
    ..value_date = json['value_date'] as String
    ..paymentPlan =
        paymentPlanFromJson(json['payment_plan'] as Map<String, dynamic>)
    ..webhooks = (json['webhooks'] as List)
        ?.map((e) =>
            e == null ? null : WebHook.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..return_urls = json['return_urls'] == null
        ? null
        : ReturnUrls.fromJson(json['return_urls'] as Map<String, dynamic>)
    ..customer = json['customer'] == null
        ? null
        : Customer.fromJson(json['customer'] as Map<String, dynamic>)
    ..device = json['device'] == null
        ? null
        : Device.fromJson(json['device'] as Map<String, dynamic>)
    ..attributes = json['attributes'] == null
        ? null
        : TransactionAttribute.fromJson(
            json['attributes'] as Map<String, dynamic>)
    ..extra_charges = extraChargesFromJson(json['extra_charges'] as List);
}

Map<String, dynamic> _$TransactionInitiateParamsToJson(
    TransactionInitiateParams instance) {
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
  writeNotNull('was_dcc_offered', instance.was_dcc_offered);
  writeNotNull('dcc_quote_reference', instance.dcc_quote_reference);
  writeNotNull('funding_instrument',
      fundingInstrumentToJson(instance.funding_instrument));
  writeNotNull('create_alias', instance.create_alias);
  writeNotNull('value_date', instance.value_date);
  writeNotNull('payment_plan', paymentPlanToJson(instance.paymentPlan));
  writeNotNull(
      'webhooks', instance.webhooks?.map((e) => e?.toJson())?.toList());
  writeNotNull('return_urls', instance.return_urls?.toJson());
  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull('device', instance.device?.toJson());
  writeNotNull('attributes', instance.attributes?.toJson());
  writeNotNull('extra_charges', extraChargesToJson(instance.extra_charges));
  return val;
}
