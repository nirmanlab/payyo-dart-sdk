// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_urls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnUrls _$ReturnUrlsFromJson(Map<String, dynamic> json) {
  return ReturnUrls()
    ..success = json['success'] as String
    ..error = json['error'] as String
    ..abort = json['abort'] as String;
}

Map<String, dynamic> _$ReturnUrlsToJson(ReturnUrls instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': instance.error,
      'abort': instance.abort,
    };
