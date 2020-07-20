// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_urls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnUrls _$ReturnUrlsFromJson(Map<String, dynamic> json) {
  return ReturnUrls()
    ..success = json['success'] as String
    ..error = json['error'] as String
    ..abort = json['abort'] as String
    ..fail = json['fail'] as String;
}

Map<String, dynamic> _$ReturnUrlsToJson(ReturnUrls instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('success', instance.success);
  writeNotNull('error', instance.error);
  writeNotNull('abort', instance.abort);
  writeNotNull('fail', instance.fail);
  return val;
}
