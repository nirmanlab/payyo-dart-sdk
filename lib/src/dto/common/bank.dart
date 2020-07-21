import 'package:json_annotation/json_annotation.dart';

part 'bank.g.dart';

@JsonSerializable(explicitToJson: true)
class Bank {
  String bic;

  Bank();

  factory Bank.fromJson(Map<String, dynamic> jsonMap) =>
      _$BankFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$BankToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LastschriftBank extends Bank {
  String name;

  LastschriftBank();

  factory LastschriftBank.fromJson(Map<String, dynamic> jsonMap) =>
      _$LastschriftBankFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$LastschriftBankToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SofortBank {
  /// The ISO-3166 2-letter country code of the customer's bank.
  /// RegExp:
  /// ```
  ///   ^[a-zA-Z]{2}$
  /// ```
  @JsonKey(required: true)
  String country_code;

  SofortBank();

  factory SofortBank.fromJson(Map<String, dynamic> jsonMap) =>
      _$SofortBankFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$SofortBankToJson(this);
}
