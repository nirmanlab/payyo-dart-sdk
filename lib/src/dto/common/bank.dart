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

  Map<String, dynamic> toJson() => _$LastschriftBankToJson(this);
}