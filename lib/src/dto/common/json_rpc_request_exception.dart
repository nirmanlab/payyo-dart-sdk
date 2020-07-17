import 'package:payyo_sdk/src/dto/common/json_rpc_response.dart';

/// represents exception which will be thrown when payyo returns exception
class JsonRPCRequestException implements Exception {
  final JsonRPCErrorResponse response;

  JsonRPCRequestException(this.response);
}
