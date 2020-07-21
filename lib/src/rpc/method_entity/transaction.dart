import 'dart:convert';

import 'package:payyo_sdk/payyo_sdk.dart';
import 'package:payyo_sdk/src/dto/common/rpc_method.dart';
import 'package:payyo_sdk/src/dto/request/transaction/transaction_capture_params.dart';
import 'package:payyo_sdk/src/dto/request/transaction/transaction_get_next_action_params.dart';
import 'package:payyo_sdk/src/dto/response/transaction/transaction_next_action_response.dart';
import 'package:payyo_sdk/src/rpc/method_entity/payyo_method_entity.dart';

class Transaction extends RPCMethodEntity {
  void authorize() {
    throw UnimplementedError();
  }

  void cancel() {
    throw UnimplementedError();
  }

  Future<TransactionNextActionResponse> capture(
      TransactionCaptureParams requestParams,
      [int id = 1]) async {
    var response = await executeRPCRequest(
        RPCMethod.transaction_capture, requestParams,
        id: id);

    if (isOk(response)) {
      var jsonMap = jsonDecode(response.body);
      print(jsonMap);
      if (isError(jsonMap)) {
        throwJsonRPCRequestException(jsonMap);
      } else {
        return TransactionNextActionResponse.fromJson(jsonMap);
      }
    }

    throw Exception(
        'transaction.capture failed, {statusCode: ${response.statusCode}}, {body: ${response.body}}');
  }

  void getDccQuote() {
    throw UnimplementedError();
  }

  void getDetails() {
    throw UnimplementedError();
  }

  Future<TransactionNextActionResponse> getNextAction(String transactionId,
      [int id = 1]) async {
    assert(transactionId != null);

    var response = await executeRPCRequest(RPCMethod.transaction_getNextAction,
        TransactionGetNextActionParams()..transaction_id = transactionId,
        id: id);

    if (isOk(response)) {
      var jsonMap = jsonDecode(response.body);
      print(jsonMap);
      if (isError(jsonMap)) {
        throwJsonRPCRequestException(jsonMap);
      } else {
        return TransactionNextActionResponse.fromJson(jsonMap);
      }
    }

    throw Exception(
        'transaction.getNextAction failed, {statusCode: ${response.statusCode}}, {body: ${response.body}}');
  }

  Future<TransactionNextActionResponse> initiate(
      TransactionInitiateParams requestParams,
      {int id = 1}) async {
    var response = await executeRPCRequest(
        RPCMethod.transaction_initiate, requestParams,
        id: id);

    if (isOk(response)) {
      var jsonMap = jsonDecode(response.body);
      print(jsonMap);
      if (isError(jsonMap)) {
        throwJsonRPCRequestException(jsonMap);
      } else {
        return TransactionNextActionResponse.fromJson(jsonMap);
      }
    }

    throw Exception(
        'paymentPage.initialize failed, {statusCode: ${response.statusCode}}, {body: ${response.body}}');
  }

  void pay() {
    throw UnimplementedError();
  }

  void refund() {
    throw UnimplementedError();
  }

  void reverse() {
    throw UnimplementedError();
  }

  void voidTransaction() {
    throw UnimplementedError();
  }

  void search() {
    throw UnimplementedError();
  }
}
