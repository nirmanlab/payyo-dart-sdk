// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'styling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Styling _$StylingFromJson(Map<String, dynamic> json) {
  return Styling()
    ..logo_url = json['logo_url'] as String
    ..favicon_url = json['favicon_url'] as String
    ..accent_color = json['accent_color'] as String;
}

Map<String, dynamic> _$StylingToJson(Styling instance) => <String, dynamic>{
      'logo_url': instance.logo_url,
      'favicon_url': instance.favicon_url,
      'accent_color': instance.accent_color,
    };
