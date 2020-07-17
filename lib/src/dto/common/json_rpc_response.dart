/// represents abstract [JsonRPCResponse]
abstract class JsonRPCResponse {
  String jsonrpc = '2.0';
  int id;
}

/// represents JSON RPC Error
class JsonRPCError {
  int code;
  String message;
}

/// represents error response when api fails
class JsonRPCErrorResponse extends JsonRPCResponse {
  JsonRPCError error;

  JsonRPCErrorResponse() : error = JsonRPCError();

  factory JsonRPCErrorResponse.fromErrorJsonMap(
      Map<String, dynamic> errorJsonMap) {
    var errorMap = errorJsonMap['error'];
    return JsonRPCErrorResponse()
      ..error.code = errorMap['code']
      ..error.message = errorMap['message']
      ..id = errorMap['id'];
  }
}
