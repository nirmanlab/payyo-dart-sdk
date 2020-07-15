import 'package:payyo_sdk/src/config/payyo_api_configuration.dart';
import 'package:payyo_sdk/src/encoders/auth_header_value_encoder.dart';
import 'package:payyo_sdk/src/encoders/http_request_body_encoder.dart';
import 'package:payyo_sdk/src/encoders/signature_encoder.dart';

mixin AuthHeaderValueEncoderMixin {
  String encodeAuthHeader(
      String requestBody, PayyoAPIConfiguration payyoAPIConfiguration) {
    var encodedRequestBody = _encodeRequest(requestBody);
    var encodedSignature = SignatureEncoder(payyoAPIConfiguration.secreteKey)
        .encode(encodedRequestBody);
    return AuthHeaderValueEncoder(payyoAPIConfiguration.publicKey)
        .encode(encodedSignature);
  }

  String _encodeRequest(String requestBody) {
    return HttpRequestBodyEncoder().encode(requestBody);
  }
}
