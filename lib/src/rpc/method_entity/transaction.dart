import 'dart:convert';

import 'package:payyo_sdk/src/dto/common/json_rpc_response.dart';
import 'package:payyo_sdk/src/dto/common/rpc_method.dart';
import 'package:payyo_sdk/src/dto/common/transaction/transaction_next_action_response.dart';
import 'package:payyo_sdk/src/dto/request/transaction/transaction_get_next_action_params.dart';
import 'package:payyo_sdk/src/payyo_sdk_base.dart';
import 'package:payyo_sdk/src/rpc/payyo_method_entity.dart';

class Transaction extends RPCMethodEntity {
  void authorize() {
    throw UnimplementedError();
  }

  void cancel() {
    throw UnimplementedError();
  }

  void capture() {
    throw UnimplementedError();
  }

  void getDccQuote() {
    throw UnimplementedError();
  }

  void getDetails() {
    throw UnimplementedError();
  }

  Future<TransactionNextActionResponse> getNextAction(String transactionId, [int id = 1]) async {
    assert(transactionId != null);

    var response = await executeRPCRequest(RPCMethod.transaction_getNextAction,
        TransactionGetNextActionParams()..transaction_id = transactionId, id: id);

    if (isOk(response)) {
      var jsonDecodedMap = jsonDecode(response.body);
      print(jsonDecodedMap);
      if (isError(jsonDecodedMap)) {
        throwJsonRPCRequestException(jsonDecodedMap);
      } else {
        return TransactionNextActionResponse.fromJson(jsonDecodedMap);
      }
    }

    throw Exception(
        'paymentPage.initialize failed, {statusCode: ${response.statusCode}}, {body: ${response.body}}');

  }

  void initialize() {
  }

  void initiate() {
    throw UnimplementedError();
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
