// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lastschrift_holder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastschriftHolder _$LastschriftHolderFromJson(Map<String, dynamic> json) {
  return LastschriftHolder()
    ..name = json['name'] as String
    ..iban = json['iban'] as String;
}

Map<String, dynamic> _$LastschriftHolderToJson(LastschriftHolder instance) =>
    <String, dynamic>{
      'name': instance.name,
      'iban': instance.iban,
    };
