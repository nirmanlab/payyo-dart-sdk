import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

/// customer pojo
@JsonSerializable(nullable: true)
class Customer {
  String first_name;
  String last_name;
  String email;
  String phone;
  String birthday;
  String country;
  int price;
  String service_description;

  Customer();

  factory Customer.fromJson(Map<String, dynamic> jsonMap) =>
      _$CustomerFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
