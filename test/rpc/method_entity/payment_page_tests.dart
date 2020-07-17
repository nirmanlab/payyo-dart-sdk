import 'package:payyo_sdk/payyo_sdk.dart';
import 'package:payyo_sdk/src/config/payyo_api_configuration.dart';
import 'package:payyo_sdk/src/dto/common/json_rpc_request_exception.dart';
import 'package:payyo_sdk/src/dto/common/payment_plan.dart';
import 'package:payyo_sdk/src/dto/common/return_urls.dart';
import 'package:payyo_sdk/src/dto/request/payment_page/payment_page_initialize_request_params.dart';
import 'package:payyo_sdk/src/rpc/method_entity/payment_page.dart';
import 'package:test/test.dart';

void main() {
  group('A group of Payment Page tests', () {
    PaymentPage paymentPage;

    setUp(() {
      PayyoMobileSDK.configurations = PayyoAPIConfiguration()
        ..endpoint = 'https://api.sandbox.trekkpay.io'
        ..version = 'v2'
        ..publicKey = 'api_1dae36d204dca5f7c54a81044e7a'
        ..secreteKey = 'sec_74a3d04034736d7674e20e059714';

      paymentPage = PaymentPage();
    });

    test(
        'paymentPage.initialize returns error response when signature mismatched',
        () async {
      var returnUrls = ReturnUrls()
        ..success = 'http://localhost/success'
        ..error = 'http://localhost/error'
        ..abort = 'http://localhost/abort';

      var paymentPlan = SubscriptionPaymentPlan()
        ..type = PaymentPlanType.subscription
        ..interval = SubscriptionInterval.daily
        ..start_date = '2020-12-12';

      var requestParams = PaymentPageInitializeRequestParams()
        ..merchant_id = 18240
        ..merchant_reference = 'uniqueIdentifier_1'
        ..currency = 'USD'
        ..amount = 50
        ..return_urls = returnUrls
        ..payment_methods = [
          PaymentMethod.apple_pay,
          PaymentMethod.credit_card,
          PaymentMethod.direct_debit,
          PaymentMethod.direct_debit
        ]
        ..language = 'en'
        ..is_reusable = false
        ..payment_plan = paymentPlan;

      try {
        var paymentPageInitializeResponse =
            await paymentPage.initialize(requestParams);
        expect(paymentPageInitializeResponse.result, isNotNull);
        expect(paymentPageInitializeResponse.result.checkout_url, isNotNull);
      } catch (e) {
        if (e is JsonRPCRequestException) {}
        expect(e, isNull);
      }
    });
  });
}
