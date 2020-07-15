import 'dart:convert';

import 'package:payyo_sdk/src/encoders/http_request_body_encoder.dart';
import 'package:payyo_sdk/src/encoders/signature_encoder.dart';
import 'package:test/test.dart';

void main() {
  group('A group of SignatureEncoder tests', () {
    SignatureEncoder signatureEncoder;

    setUp(() {
      signatureEncoder = SignatureEncoder('sec_74a3d04034736d7674e20e059714');
    });

    test('Encode Body to Base64Url format', () {
      var body = <String, dynamic>{
        'name': 'Payyo',
        'address': {'city': 'zurich', 'postal_code': 35010}
      };

      var bodyAsString = jsonEncode(body);
      var actual = signatureEncoder.encode(HttpRequestBodyEncoder().encode(bodyAsString));

      expect(actual, isNotNull);
    });
  });
}
