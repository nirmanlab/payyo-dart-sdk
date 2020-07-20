import 'package:payyo_sdk/payyo_sdk.dart';
import 'package:payyo_sdk/src/config/payyo_api_configuration.dart';
import 'package:payyo_sdk/src/dto/common/funding_instrument.dart';
import 'package:payyo_sdk/src/rpc/method_entity/transaction.dart';
import 'package:test/test.dart';

void main() {
  group('A group of Transaction tests', () {
    Transaction transaction;

    setUp(() {
      PayyoMobileSDK.configurations = PayyoAPIConfiguration()
        ..endpoint = 'https://api.sandbox.trekkpay.io'
        ..version = 'v2'
        ..publicKey = 'api_1dae36d204dca5f7c54a81044e7a'
        ..secreteKey = 'sec_74a3d04034736d7674e20e059714';

      transaction = Transaction();
    });

    test(
        'transaction.initiate returns valid next action when fundingInstrument is Twint parameters are valid',
        () async {
      var returnUrls = ReturnUrls()
        ..success = 'http://localhost/success'
        ..fail = 'http://localhost/error'
        ..abort = 'http://localhost/abort';

      var twintFundingInstrument = TwintFundingInstrument();

      var requestParams = TransactionInitiateParams()
        ..merchant_id = 18240
        ..merchant_reference = DateTime.now().millisecondsSinceEpoch.toString()
        ..currency = 'CHF'
        ..amount = 500
        ..funding_instrument = twintFundingInstrument
        ..return_urls = returnUrls
        ..description = 'Some foo description';

      var response = await transaction.initiate(requestParams);
      print(response.result.redirect_url);
      expect(response.result, isNotNull);
      expect(response.result.redirect_url, isNotNull);
    });

    test(
        'transaction.initiate returns valid next action when fundingInstrument is Apple pay parameters are valid',
        () async {
      var returnUrls = ReturnUrls()
        ..success = 'http://localhost/success'
        ..fail = 'http://localhost/error'
        ..abort = 'http://localhost/abort';

      var applePayFundingInstrument = ApplePayFundingInstrument();

      var requestParams = TransactionInitiateParams()
        ..merchant_id = 18240
        ..merchant_reference = DateTime.now().millisecondsSinceEpoch.toString()
        ..currency = 'EUR'
        ..amount = 500
        ..funding_instrument = applePayFundingInstrument
        ..return_urls = returnUrls
        ..description = 'Some foo description';

      //TODO currently this test is failing on sandbox mode. When this issue is fixed from Payyo end, we can fix this test.
      await transaction.initiate(requestParams);
    });

    test('transaction.getNextAction returns success response', () async {
      var transactionId = 'tra_8b78b6094cdf1be1a584b8004885';
      var getActionResponse = await transaction.getNextAction(transactionId);

      var result = getActionResponse.result;
      expect(result.transaction_id, equals(transactionId));
      expect(result.status, isNotNull);
      expect(result.next_action, isNotNull);
    });
  });
}
