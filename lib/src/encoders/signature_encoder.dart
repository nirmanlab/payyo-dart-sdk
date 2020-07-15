import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:payyo_sdk/src/encoders/payyo_encoder.dart';

class SignatureEncoder extends PayyoEncoder<String, String> {
  final String secreteKey;
  List<int> _encodedKey;
  Hmac _hmac;

  SignatureEncoder(this.secreteKey) {
    assert(secreteKey != null);

    _encodedKey = utf8.encode(secreteKey);
    _hmac = Hmac(sha256, _encodedKey);
  }

  @override
  String encode(String encodedRequestBody) {
    var bytes = utf8.encode(encodedRequestBody);
    return _hmac.convert(bytes).toString();
  }
}
