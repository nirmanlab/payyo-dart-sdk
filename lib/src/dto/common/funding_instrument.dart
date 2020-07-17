import 'package:json_annotation/json_annotation.dart';
import 'package:payyo_sdk/src/dto/common/bank.dart';
import 'package:payyo_sdk/src/dto/common/lastschrift_holder.dart';

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
}

class CardFundingInstrument extends FundingInstrument {
  String number;
  String expires;
  String cvc;
  String holder;

  CardFundingInstrument() : super(FundingInstrumentType.credit_card);
}

class CartAliasFundingInstrument extends FundingInstrument {
  String alias_id;
  String cvc;

  CartAliasFundingInstrument() : super(FundingInstrumentType.credit_card_alias);
}

class LastschriftFundingInstrument extends FundingInstrument {
  LastschriftHolder holder;
  LastschriftBank bank;

  LastschriftFundingInstrument() : super(FundingInstrumentType.direct_debit);
}

class PayworksFundingInstrument extends FundingInstrument {
  PayworksFundingInstrument() : super(FundingInstrumentType.payworks);
}

class IdealFundingInstrument extends FundingInstrument {
  IdealFundingInstrument() : super(FundingInstrumentType.ideal);
}

class PaymentAgreementReferenceFundingInstrument extends FundingInstrument {
  PaymentAgreementReferenceFundingInstrument()
      : super(FundingInstrumentType.payment_agreement);
}

class AlipayFundingInstrument extends FundingInstrument {
  AlipayFundingInstrument() : super(FundingInstrumentType.alipay);
}

class SofortFundingInstrument extends FundingInstrument {
  SofortFundingInstrument() : super(FundingInstrumentType.sofort);
}

class PostFinanceFundingInstrument extends FundingInstrument {
  PostFinanceFundingInstrument() : super(FundingInstrumentType.postfinance);
}

class TwintFundingInstrument extends FundingInstrument {
  TwintFundingInstrument() : super(FundingInstrumentType.twint);
}

class ApplePayFundingInstrument extends FundingInstrument {
  ApplePayFundingInstrument() : super(FundingInstrumentType.apple_pay);
}
