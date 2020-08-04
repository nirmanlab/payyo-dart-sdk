Payyo SDK for dart developers.

[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart

main() async {
  PayyoMobileSDK.configurations = PayyoAPIConfiguration()
      ..endpoint = 'SANDBOX_OR_PRODUCTION_ENDPOINT'
      ..version = 'v2'
      ..publicKey = 'YOUR_PUBLIC_KEY'
      ..secreteKey = 'YOUR_SECRETE_KEY';
  
  Transaction transaction = Transaction();
  
  var response = await transaction.getNextAction('transactionId');
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/nirman-lab/payyo-dart-sdk/issues
