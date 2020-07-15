abstract class JsonRPCResponse {
  String jsonrpc = '2.0';
  int id;
}

abstract class JsonRPCResponseResult {}

class JsonRPCError {
  int code;
  String message;
}

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
