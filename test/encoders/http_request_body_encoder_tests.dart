import 'dart:convert';

import 'package:payyo_sdk/src/encoders/http_request_body_encoder.dart';
import 'package:test/test.dart';

void main() {
  group('A group of HttpRequestBodyEncoder tests', () {
    HttpRequestBodyEncoder httpRequestBodyEncoder;

    setUp(() {
      httpRequestBodyEncoder = HttpRequestBodyEncoder();
    });

    test('Encode Body to Base64Url format', () {
      var body = <String, dynamic>{
        'name': 'Payyo',
        'address': {'city': 'zurich', 'postal_code': 35010}
      };

      var bodyAsString = jsonEncode(body);
      var actual = httpRequestBodyEncoder.encode(bodyAsString);
      expect(actual, isNotNull);
      expect(bodyAsString, equals(utf8.fuse(base64Url).decode(actual)));
    });
  });
}
