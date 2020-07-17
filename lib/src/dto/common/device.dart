import 'package:json_annotation/json_annotation.dart';

part 'device.g.dart';

@JsonSerializable()
class Device {
  String ip_address;
  String user_agent;

  Device();

  factory Device.fromJson(Map<String, dynamic> jsonMap) =>
      _$DeviceFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$DeviceToJson(this);
}