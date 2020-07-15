// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return Customer()
    ..first_name = json['first_name'] as String
    ..last_name = json['last_name'] as String
    ..email = json['email'] as String
    ..phone = json['phone'] as String
    ..birthday = json['birthday'] as String
    ..country = json['country'] as String
    ..price = json['price'] as int
    ..service_description = json['service_description'] as String;
}

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'phone': instance.phone,
      'birthday': instance.birthday,
      'country': instance.country,
      'price': instance.price,
      'service_description': instance.service_description,
    };
