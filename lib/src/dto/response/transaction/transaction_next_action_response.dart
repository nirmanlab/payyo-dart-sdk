import 'package:json_annotation/json_annotation.dart';
import 'package:payyo_sdk/src/dto/common/json_rpc_response.dart';

part 'transaction_next_action_response.g.dart';

@JsonSerializable(explicitToJson: true)
class TransactionNextActionResponse extends JsonRPCResponse {
  TransactionNextActionResponseResult result;

  TransactionNextActionResponse();

  factory TransactionNextActionResponse.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$TransactionNextActionResponseFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$TransactionNextActionResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class TransactionNextActionResponseResult {
  String transaction_id;
  String status;
  String next_action;
  String redirect_url;

  TransactionNextActionResponseResult();

  factory TransactionNextActionResponseResult.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$TransactionNextActionResponseResultFromJson(jsonMap);

  Map<String, dynamic> toJson() =>
      _$TransactionNextActionResponseResultToJson(this);
}
