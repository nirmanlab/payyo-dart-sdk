import 'dart:convert';

import 'package:payyo_sdk/src/encoders/payyo_encoder.dart';

class HttpRequestBodyEncoder extends PayyoEncoder<String, String> {
  final Codec<String, String> fuse = utf8.fuse(base64Url);

  @override
  String encode(String requestString) {
    var encodedList = utf8.encode(requestString);
    var base64UrlEncodedString = base64Url.encode(encodedList);
    return base64UrlEncodedString.replaceAll('=', '').trim();
  }
}
