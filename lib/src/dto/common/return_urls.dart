import 'package:json_annotation/json_annotation.dart';

part 'return_urls.g.dart';

@JsonSerializable(includeIfNull: false)
class ReturnUrls {
  String success;
  String error;
  String abort;
  String fail;

  ReturnUrls();

  factory ReturnUrls.fromJson(Map<String, dynamic> jsonMap) =>
      _$ReturnUrlsFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$ReturnUrlsToJson(this);
}
