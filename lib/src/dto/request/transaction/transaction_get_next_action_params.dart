import 'package:json_annotation/json_annotation.dart';
import 'package:payyo_sdk/src/dto/request/request_params.dart';

part 'transaction_get_next_action_params.g.dart';

@JsonSerializable(explicitToJson: true)
class TransactionGetNextActionParams extends RequestParams {
  String transaction_id;

  TransactionGetNextActionParams();

  factory TransactionGetNextActionParams.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$TransactionGetNextActionParamsFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$TransactionGetNextActionParamsToJson(this);
}
