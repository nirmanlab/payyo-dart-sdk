import 'dart:convert';

import 'package:payyo_sdk/src/encoders/auth_header_value_encoder.dart';
import 'package:payyo_sdk/src/encoders/http_request_body_encoder.dart';
import 'package:payyo_sdk/src/encoders/signature_encoder.dart';
import 'package:test/test.dart';

void main() {
  group('A group of AuthHeaderValueEncoder tests', () {
    HttpRequestBodyEncoder httpRequestBodyEncoder;
    SignatureEncoder signatureEncoder;
    AuthHeaderValueEncoder authHeaderValueEncoder;

    setUp(() {
      httpRequestBodyEncoder = HttpRequestBodyEncoder();
      signatureEncoder = SignatureEncoder('sec_74a3d04034736d7674e20e059714');
      authHeaderValueEncoder =
          AuthHeaderValueEncoder('api_1dae36d204dca5f7c54a81044e7a');
    });

    test('Encode value', () {
      var body = <String, dynamic>{
        'jsonrpc': '2.0',
        'id': 1,
        'method': 'paymentPage.initialize',
        'params': {
          'merchant_id': 18240,
          'merchant_reference': 'uniqueIdentifier_1',
          'currency': 'USD',
          'amount': 50,
          'return_urls': {
            'success': 'http://localhost/success',
            'error': 'http://localhost/error',
            'abort': 'http://localhost/abort'
          }
        }
      };

      var bodyAsString = jsonEncode(body);
      var encodedRequestBody = httpRequestBodyEncoder.encode(bodyAsString);

      var encodedSignature = signatureEncoder.encode(encodedRequestBody);

      var actual = authHeaderValueEncoder.encode(encodedSignature);

      expect(actual, isNotNull);
    });
  });
}
