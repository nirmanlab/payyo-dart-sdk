import 'package:json_annotation/json_annotation.dart';

part 'lastschrift_holder.g.dart';

@JsonSerializable(explicitToJson: true)
class LastschriftHolder {
  String name;
  String iban;

  LastschriftHolder();

  factory LastschriftHolder.fromJson(Map<String, dynamic> jsonMap) =>
      _$LastschriftHolderFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$LastschriftHolderToJson(this);
}
