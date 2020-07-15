import 'package:json_annotation/json_annotation.dart';

part 'web_hook.g.dart';

@JsonSerializable(nullable: true)
class WebHook {
  String url;
  WebHookMethod method;

  WebHook();

  factory WebHook.fromJson(Map<String, dynamic> jsonMap) =>
      _$WebHookFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$WebHookToJson(this);
}

enum WebHookMethod {
  @JsonValue('PATCH')
  patch,
  @JsonValue('PUT')
  put,
  @JsonValue('POST')
  post
}
