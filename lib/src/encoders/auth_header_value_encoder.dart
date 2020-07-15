import 'dart:convert';

import 'package:payyo_sdk/src/encoders/payyo_encoder.dart';

class AuthHeaderValueEncoder extends PayyoEncoder<String, String> {
  final String publicKey;
  final Codec<String, String> fuse = utf8.fuse(base64);

  AuthHeaderValueEncoder(this.publicKey);

  @override
  String encode(String encodedSignature) {
    return fuse.encode('$publicKey:$encodedSignature');
  }
}
