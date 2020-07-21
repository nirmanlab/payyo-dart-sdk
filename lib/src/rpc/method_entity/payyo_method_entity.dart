import 'dart:convert';

import 'package:http/http.dart';
import 'package:payyo_sdk/src/config/payyo_api_configuration.dart';
import 'package:payyo_sdk/src/dto/common/json_rpc_request_exception.dart';
import 'package:payyo_sdk/src/dto/common/json_rpc_response.dart';
import 'package:payyo_sdk/src/dto/common/rpc_method.dart';
import 'package:payyo_sdk/src/dto/request/request_params.dart';
import 'package:payyo_sdk/src/mixins/auth_header_value_encoder_mixin.dart';
import 'package:payyo_sdk/src/payyo_sdk_base.dart';

abstract class RPCMethodEntity with AuthHeaderValueEncoderMixin {
  final PayyoAPIConfiguration _payyoAPIConfiguration;

  RPCMethodEntity()
      : assert(PayyoMobileSDK.configurations != null),
        _payyoAPIConfiguration = PayyoMobileSDK.configurations;

  Map<String, String> commonHeaders() {
    return {'Accept': 'application/json', 'Content-Type': 'application/json'};
  }

  Map<String, String> commonHeadersWithAuthHeader(String authHeaderValue) {
    return {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Basic $authHeaderValue'
    };
  }

  Future<Response> executeRPCRequest(
      RPCMethod rpcMethod, RequestParams requestParams,
      {int id = 1}) {
    var requestBody =
        jsonEncode(prepareRequestBody(rpcMethod, requestParams, id: id));

    var authHeaderValue = commonHeadersWithAuthHeader(
        encodeAuthHeader(requestBody, _payyoAPIConfiguration));

    return post(_payyoAPIConfiguration.endpointWithVersion(),
        headers: authHeaderValue, body: requestBody);
  }

  Map<String, dynamic> prepareRequestBody(
      RPCMethod rpcMethod, RequestParams requestParams,
      {int id = 1}) {
    return {
      'jsonrpc': '2.0',
      'method': rpcMethodStringValue(rpcMethod),
      'params': requestParams.toJson(),
      'id': id
    };
  }

  bool isError(Map<String, dynamic> jsonMap) {
    return jsonMap['error'] != null;
  }

  bool isOk(Response response) {
    return response.statusCode == 200;
  }

  void throwJsonRPCRequestException(Map<String, dynamic> jsonMap) {
    throw JsonRPCRequestException(
        JsonRPCErrorResponse.fromErrorJsonMap(jsonMap));
  }
}
