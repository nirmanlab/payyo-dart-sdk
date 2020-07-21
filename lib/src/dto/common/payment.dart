import 'package:json_annotation/json_annotation.dart';

part 'payment.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Payment {
  @JsonKey(required: true)
  int merchant_id;

  @JsonKey(required: true)
  int amount;

  String reference;

  String description;

  Payment();

  factory Payment.fromJson(Map<String, dynamic> jsonMap) =>
      _$PaymentFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}
