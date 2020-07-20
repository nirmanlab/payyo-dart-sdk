import 'package:json_annotation/json_annotation.dart';

part 'extra_charge.g.dart';

/// extra charge pojo
enum ExtraChargeType {
  @JsonValue('insurance')
  insurance,
  @JsonValue('integrator_fee')
  integrator_fee,
}

abstract class ExtraCharge {
  ExtraChargeType type;

  ExtraCharge(this.type);

  Map<String, dynamic> toJson();

  factory ExtraCharge.fromJson(Map<String, dynamic> jsonMap) {
    String type = jsonMap['type'];
    if (type == 'insurance') {
      return InsuranceCrossSale.fromJson(jsonMap);
    }

    if (type == 'integrator_fee') {
      return IntegratorFee.fromJson(jsonMap);
    }

    return null;
  }
}

@JsonSerializable(nullable: true)
class IntegratorFee extends ExtraCharge {
  int amount;
  String description;

  IntegratorFee() : super(ExtraChargeType.integrator_fee);

  factory IntegratorFee.fromJson(Map<String, dynamic> jsonMap) =>
      _$IntegratorFeeFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$IntegratorFeeToJson(this);
}

@JsonSerializable(nullable: true)
class InsuranceCrossSale extends ExtraCharge {
  String insurance_policy_id;

  InsuranceCrossSale() : super(ExtraChargeType.insurance);

  factory InsuranceCrossSale.fromJson(Map<String, dynamic> jsonMap) =>
      _$InsuranceCrossSaleFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$InsuranceCrossSaleToJson(this);
}

String extraChargesToJson(List<ExtraCharge> extraCharge) {
  if (extraCharge != null && extraCharge.isNotEmpty) {
    return '[${extraCharge.map((e) => e.toJson()).join(',')}]';
  }

  return null;
}

List<ExtraCharge> extraChargesFromJson(List listOfJsonMap) {
  if (listOfJsonMap != null && listOfJsonMap.isNotEmpty) {
    return listOfJsonMap.map((e) => ExtraCharge.fromJson(e)).toList();
  }

  return null;
}
