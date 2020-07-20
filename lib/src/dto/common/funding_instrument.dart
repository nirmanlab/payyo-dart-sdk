import 'package:json_annotation/json_annotation.dart';
import 'package:payyo_sdk/src/dto/common/bank.dart';
import 'package:payyo_sdk/src/dto/common/lastschrift_holder.dart';

part 'funding_instrument.g.dart';

enum FundingInstrumentType {
  @JsonValue('credit_card')
  credit_card,
  @JsonValue('credit_card_alias')
  credit_card_alias,
  @JsonValue('direct_debit')
  direct_debit,
  @JsonValue('payworks')
  payworks,
  @JsonValue('ideal')
  ideal,
  @JsonValue('payment_agreement')
  payment_agreement,
  @JsonValue('alipay')
  alipay,
  @JsonValue('sofort')
  sofort,
  @JsonValue('postfinance')
  postfinance,
  @JsonValue('twint')
  twint,
  @JsonValue('apple_pay')
  apple_pay
}

abstract class FundingInstrument {
  FundingInstrumentType type;

  FundingInstrument(this.type);

  Map<String, dynamic> toJson();

  factory FundingInstrument.fromJson(Map<String, dynamic> jsonMap) {
    String typeAsString = jsonMap['type'];

    if (typeAsString == 'credit_card') {
      return CardFundingInstrument.fromJson(jsonMap);
    } else if (typeAsString == 'credit_card_alias') {
      CardAliasFundingInstrument.fromJson(jsonMap);
    } else if (typeAsString == 'direct_debit') {
      return LastschriftFundingInstrument.fromJson(jsonMap);
    } else if (typeAsString == 'payworks') {
      return PayworksFundingInstrument.fromJson(jsonMap);
    } else if (typeAsString == 'ideal') {
      return IdealFundingInstrument.fromJson(jsonMap);
    } else if (typeAsString == 'payment_agreement') {
      return PaymentAgreementReferenceFundingInstrument.fromJson(jsonMap);
    } else if (typeAsString == 'alipay') {
      return AlipayFundingInstrument.fromJson(jsonMap);
    } else if (typeAsString == 'sofort') {
      return SofortFundingInstrument.fromJson(jsonMap);
    } else if (typeAsString == 'postfinance') {
      return PostFinanceFundingInstrument.fromJson(jsonMap);
    } else if (typeAsString == 'twint') {
      return TwintFundingInstrument.fromJson(jsonMap);
    } else if (typeAsString == 'apple_pay') {
      return ApplePayFundingInstrument.fromJson(jsonMap);
    }

    return null;
  }
}

@JsonSerializable(nullable: true, explicitToJson: true)
class CardFundingInstrument extends FundingInstrument {
  @JsonKey(required: true)

  /// Expiration date in format YYYY-MM
  /// RegEx:
  ///```
  /// ^\d{4}\-(1[0-2]|0[1-9])$
  ///```
  String number;
  @JsonKey(required: true)
  String expires;
  String cvc;
  @JsonKey(required: true)
  String holder;

  CardFundingInstrument() : super(FundingInstrumentType.credit_card);

  factory CardFundingInstrument.fromJson(Map<String, dynamic> jsonMap) =>
      _$CardFundingInstrumentFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$CardFundingInstrumentToJson(this);
}

@JsonSerializable(nullable: true, explicitToJson: true)
class CardAliasFundingInstrument extends FundingInstrument {
  String alias_id;
  String cvc;

  CardAliasFundingInstrument() : super(FundingInstrumentType.credit_card_alias);

  factory CardAliasFundingInstrument.fromJson(Map<String, dynamic> jsonMap) =>
      _$CardAliasFundingInstrumentFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$CardAliasFundingInstrumentToJson(this);
}

@JsonSerializable(nullable: true, explicitToJson: true)
class LastschriftFundingInstrument extends FundingInstrument {
  LastschriftHolder holder;
  LastschriftBank bank;

  LastschriftFundingInstrument() : super(FundingInstrumentType.direct_debit);

  factory LastschriftFundingInstrument.fromJson(Map<String, dynamic> jsonMap) =>
      _$LastschriftFundingInstrumentFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$LastschriftFundingInstrumentToJson(this);
}

@JsonSerializable(nullable: true, explicitToJson: true)
class PayworksFundingInstrument extends FundingInstrument {
  String transaction_id;

  PayworksFundingInstrument() : super(FundingInstrumentType.payworks);

  factory PayworksFundingInstrument.fromJson(Map<String, dynamic> jsonMap) =>
      _$PayworksFundingInstrumentFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$PayworksFundingInstrumentToJson(this);
}

@JsonSerializable(nullable: true, explicitToJson: true)
class IdealFundingInstrument extends FundingInstrument {
  Bank bank;

  IdealFundingInstrument() : super(FundingInstrumentType.ideal);

  factory IdealFundingInstrument.fromJson(Map<String, dynamic> jsonMap) =>
      _$IdealFundingInstrumentFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$IdealFundingInstrumentToJson(this);
}

@JsonSerializable(nullable: true, explicitToJson: true)
class PaymentAgreementReferenceFundingInstrument extends FundingInstrument {
  /// Payment agreement identifier returned in a previous request
  String payment_agreement_id;

  PaymentAgreementReferenceFundingInstrument()
      : super(FundingInstrumentType.payment_agreement);

  factory PaymentAgreementReferenceFundingInstrument.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$PaymentAgreementReferenceFundingInstrumentFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() =>
      _$PaymentAgreementReferenceFundingInstrumentToJson(this);
}

@JsonSerializable(nullable: true, explicitToJson: true)
class AlipayFundingInstrument extends FundingInstrument {
  AlipayFundingInstrument() : super(FundingInstrumentType.alipay);

  factory AlipayFundingInstrument.fromJson(Map<String, dynamic> jsonMap) =>
      _$AlipayFundingInstrumentFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$AlipayFundingInstrumentToJson(this);
}

@JsonSerializable(nullable: true, explicitToJson: true)
class SofortFundingInstrument extends FundingInstrument {
  SofortBank bank;

  SofortFundingInstrument() : super(FundingInstrumentType.sofort);

  factory SofortFundingInstrument.fromJson(Map<String, dynamic> jsonMap) =>
      _$SofortFundingInstrumentFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$SofortFundingInstrumentToJson(this);
}

@JsonSerializable(nullable: true, explicitToJson: true)
class PostFinanceFundingInstrument extends FundingInstrument {
  PostFinanceFundingInstrument() : super(FundingInstrumentType.postfinance);

  factory PostFinanceFundingInstrument.fromJson(Map<String, dynamic> jsonMap) =>
      _$PostFinanceFundingInstrumentFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$PostFinanceFundingInstrumentToJson(this);
}

@JsonSerializable(nullable: true, explicitToJson: true)
class TwintFundingInstrument extends FundingInstrument {
  TwintFundingInstrument() : super(FundingInstrumentType.twint);

  factory TwintFundingInstrument.fromJson(Map<String, dynamic> jsonMap) =>
      _$TwintFundingInstrumentFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$TwintFundingInstrumentToJson(this);
}

@JsonSerializable(nullable: true, explicitToJson: true)
class ApplePayFundingInstrument extends FundingInstrument {
  ApplePayFundingInstrument() : super(FundingInstrumentType.apple_pay);

  factory ApplePayFundingInstrument.fromJson(Map<String, dynamic> jsonMap) =>
      _$ApplePayFundingInstrumentFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$ApplePayFundingInstrumentToJson(this);
}

Map<String, dynamic> fundingInstrumentToJson(
    FundingInstrument fundingInstrument) {
  if (fundingInstrument == null) return null;
  return fundingInstrument.toJson();
}

FundingInstrument fundingInstrumentFromJson(Map<String, dynamic> jsonMap) {
  if (jsonMap == null) return null;
  return FundingInstrument.fromJson(jsonMap);
}
