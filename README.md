UnOfficial Payyo SDK for dart developers.

[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart

main() async {
  PayyoMobileSDK.configurations = PayyoAPIConfiguration()
          ..endpoint = 'https://api.sandbox.trekkpay.io'
          ..version = 'v2'
          ..publicKey = 'api_1dae36d204dca5f7c54a81044e7a'
          ..secreteKey = 'sec_74a3d04034736d7674e20e059714';
  
  Transaction transaction = Transaction();
  
  var response = await transaction.getNextAction('transactionId');
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
