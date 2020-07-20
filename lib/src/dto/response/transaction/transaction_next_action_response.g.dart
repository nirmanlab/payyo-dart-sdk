// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_next_action_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionNextActionResponse _$TransactionNextActionResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionNextActionResponse()
    ..jsonrpc = json['jsonrpc'] as String
    ..id = json['id'] as int
    ..result = json['result'] == null
        ? null
        : TransactionNextActionResponseResult.fromJson(
            json['result'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionNextActionResponseToJson(
        TransactionNextActionResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result?.toJson(),
    };

TransactionNextActionResponseResult
    _$TransactionNextActionResponseResultFromJson(Map<String, dynamic> json) {
  return TransactionNextActionResponseResult()
    ..transaction_id = json['transaction_id'] as String
    ..status = json['status'] as String
    ..next_action = json['next_action'] as String
    ..redirect_url = json['redirect_url'] as String;
}

Map<String, dynamic> _$TransactionNextActionResponseResultToJson(
    TransactionNextActionResponseResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transaction_id', instance.transaction_id);
  writeNotNull('status', instance.status);
  writeNotNull('next_action', instance.next_action);
  writeNotNull('redirect_url', instance.redirect_url);
  return val;
}
