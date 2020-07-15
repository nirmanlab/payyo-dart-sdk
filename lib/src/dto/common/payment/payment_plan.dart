import 'package:json_annotation/json_annotation.dart';

part 'payment_plan.g.dart';

enum SubscriptionInterval {
  @JsonValue('daily')
  daily,
  @JsonValue('weekly')
  weekly,
  @JsonValue('bi_weekly')
  bi_weekly,
  @JsonValue('monthly')
  monthly,
  @JsonValue('yearly')
  yearly
}

enum PaymentPlanType {
  @JsonValue('recurring_payment')
  recurring_payment,
  @JsonValue('installments')
  installments,
  @JsonValue('subscription')
  subscription,
}

enum PaymentMethod {
  @JsonValue('credit_card')
  credit_card,
  @JsonValue('direct_debit')
  direct_debit,
  @JsonValue('ideal')
  ideal,
  @JsonValue('alipay')
  alipay,
  @JsonValue('sofort')
  sofort,
  @JsonValue('twint')
  twint,
  @JsonValue('apple_pay')
  apple_pay
}

abstract class PaymentPlan {
  PaymentPlanType type;

  Map<String, dynamic> toJson();

  PaymentPlan(this.type);

  factory PaymentPlan.fromJson(Map<String, dynamic> jsonMap) {
    String typeAsString = jsonMap['type'];
    if (typeAsString == 'recurring_payment') {
      return RecurringPaymentPlan.fromJson(jsonMap);
    } else if (typeAsString == 'installments') {
      return InstallmentPaymentPlan.fromJson(jsonMap);
    } else if (typeAsString == 'subscription') {
      return SubscriptionPaymentPlan.fromJson(jsonMap);
    } else {
      return null;
    }
  }
}

@JsonSerializable(nullable: true)
class RecurringPaymentPlan extends PaymentPlan {
  RecurringPaymentPlan() : super(PaymentPlanType.recurring_payment);

  factory RecurringPaymentPlan.fromJson(Map<String, dynamic> jsonMap) =>
      _$RecurringPaymentPlanFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$RecurringPaymentPlanToJson(this);
}

@JsonSerializable(nullable: true)
class SubscriptionPaymentPlan extends PaymentPlan {
  SubscriptionInterval interval;
  String start_date;

  SubscriptionPaymentPlan() : super(PaymentPlanType.subscription);

  factory SubscriptionPaymentPlan.fromJson(Map<String, dynamic> jsonMap) =>
      _$SubscriptionPaymentPlanFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionPaymentPlanToJson(this);
}

@JsonSerializable(nullable: true)
class InstallmentPaymentPlan extends PaymentPlan {
  List<PaymentInstallment> installments;

  InstallmentPaymentPlan() : super(PaymentPlanType.installments);

  factory InstallmentPaymentPlan.fromJson(Map<String, dynamic> jsonMap) =>
      _$InstallmentPaymentPlanFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() => _$InstallmentPaymentPlanToJson(this);
}

@JsonSerializable(nullable: true)
class PaymentInstallment {
  String due_date;
  int amount;
  String description;

  PaymentInstallment();

  factory PaymentInstallment.fromJson(Map<String, dynamic> jsonMap) =>
      _$PaymentInstallmentFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$PaymentInstallmentToJson(this);
}
