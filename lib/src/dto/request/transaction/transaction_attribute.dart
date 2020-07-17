import 'package:json_annotation/json_annotation.dart';

part 'transaction_attribute.g.dart';

@JsonSerializable(explicitToJson: true)
class TransactionAttribute {
  String insurance_policy;
  String inpayment;

  TransactionAttribute();

  factory TransactionAttribute.fromJson(Map<String, dynamic> jsonMap) =>
      _$TransactionAttributeFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$TransactionAttributeToJson(this);
}