import 'dart:convert';

import 'package:payyo_sdk/src/dto/common/rpc_method.dart';
import 'package:payyo_sdk/src/dto/request/payment_page/payment_page_initialize_request_params.dart';
import 'package:payyo_sdk/src/dto/response/payment_page_initialize_response.dart';
import 'package:payyo_sdk/src/rpc/payyo_method_entity.dart';

class PaymentPage extends RPCMethodEntity {

  Future<PaymentPageInitializeResponse> initialize(
      PaymentPageInitializeRequestParams requestParams, {int id = 1}) async {
    var response = await executeRPCRequest(RPCMethod.paymentPage_initialize, requestParams, id: id);

    if (isOk(response)) {
      var jsonDecodedMap = jsonDecode(response.body);
      if (isError(jsonDecodedMap)) {
        throwJsonRPCRequestException(jsonDecodedMap);
      } else {
        return PaymentPageInitializeResponse.fromJson(jsonDecodedMap);
      }
    }

    throw Exception(
        'paymentPage.initialize failed, {statusCode: ${response.statusCode}}, {body: ${response.body}}');
  }

  Future<PaymentPageInitializeResponse> getDetails(
      String payment_page_id) async {
    throw UnimplementedError();
  }

  void update() async {}
}
