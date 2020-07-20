// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return Device()
    ..ip_address = json['ip_address'] as String
    ..user_agent = json['user_agent'] as String;
}

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'ip_address': instance.ip_address,
      'user_agent': instance.user_agent,
    };
