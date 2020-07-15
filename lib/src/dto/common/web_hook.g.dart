// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_hook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WebHook _$WebHookFromJson(Map<String, dynamic> json) {
  return WebHook()
    ..url = json['url'] as String
    ..method = _$enumDecodeNullable(_$WebHookMethodEnumMap, json['method']);
}

Map<String, dynamic> _$WebHookToJson(WebHook instance) => <String, dynamic>{
      'url': instance.url,
      'method': _$WebHookMethodEnumMap[instance.method],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$WebHookMethodEnumMap = {
  WebHookMethod.patch: 'PATCH',
  WebHookMethod.put: 'PUT',
  WebHookMethod.post: 'POST',
};
