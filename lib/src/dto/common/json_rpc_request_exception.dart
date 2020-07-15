import 'package:payyo_sdk/src/dto/common/json_rpc_response.dart';

class JsonRPCRequestException implements Exception {
  final JsonRPCErrorResponse response;

  JsonRPCRequestException(this.response);
}
