import 'package:json_annotation/json_annotation.dart';

part 'styling.g.dart';

@JsonSerializable(nullable: true)
class Styling {
  String logo_url;
  String favicon_url;
  String accent_color;

  Styling();

  factory Styling.fromJson(Map<String, dynamic> jsonMap) =>
      _$StylingFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$StylingToJson(this);
}
