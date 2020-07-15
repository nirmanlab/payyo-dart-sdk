import 'package:payyo_sdk/src/dto/common/rpc_method.dart';

abstract class CommonJsonRPCRequestData {
  String jsonrpc = '2.0';
  RPCMethod method;
  int id;

  CommonJsonRPCRequestData(this.method);
}
