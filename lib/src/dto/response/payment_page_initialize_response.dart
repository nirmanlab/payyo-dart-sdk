import 'package:json_annotation/json_annotation.dart';
import 'package:payyo_sdk/src/dto/common/customer.dart';
import 'package:payyo_sdk/src/dto/common/json_rpc_response.dart';
import 'package:payyo_sdk/src/dto/common/payment/payment_plan.dart';
import 'package:payyo_sdk/src/dto/common/payment/styling.dart';
import 'package:payyo_sdk/src/dto/common/return_urls.dart';
import 'package:payyo_sdk/src/dto/common/web_hook.dart';
import 'package:payyo_sdk/src/dto/request/payment_page/payment_page_initialize_request_params.dart';

part 'payment_page_initialize_response.g.dart';

@JsonSerializable(nullable: true, explicitToJson: true)
class PaymentPageInitializeResponse extends JsonRPCResponse {
  PaymentPageInitializeResponseResult result;

  PaymentPageInitializeResponse();

  factory PaymentPageInitializeResponse.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$PaymentPageInitializeResponseFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$PaymentPageInitializeResponseToJson(this);
}

@JsonSerializable(nullable: true, explicitToJson: true)
class PaymentPageInitializeResponseResult
    extends PaymentPageInitializeRequestParams {
  String payment_page_id;
  String checkout_url;
  String amount_formatted;
  String transaction_id;
  bool is_expired;

  PaymentPageInitializeResponseResult();

  factory PaymentPageInitializeResponseResult.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$PaymentPageInitializeResponseResultFromJson(jsonMap);

  @override
  Map<String, dynamic> toJson() =>
      _$PaymentPageInitializeResponseResultToJson(this);
}
