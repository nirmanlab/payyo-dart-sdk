import 'package:json_annotation/json_annotation.dart';

part 'return_urls.g.dart';

@JsonSerializable(nullable: true)
class ReturnUrls {
  String success;
  String error;
  String abort;

  ReturnUrls();

  factory ReturnUrls.fromJson(Map<String, dynamic> jsonMap) =>
      _$ReturnUrlsFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$ReturnUrlsToJson(this);
}
