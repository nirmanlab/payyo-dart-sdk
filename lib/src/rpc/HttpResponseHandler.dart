import 'dart:io';

import 'package:http/http.dart';

class HttpResponseHandler<R> {
  final R Function(Response response) onHttpOk;
  final Exception onNotHttpOkException;

  final Response response;

  HttpResponseHandler(this.response, this.onHttpOk, this.onNotHttpOkException);

  R handle() {
    if (response.statusCode == HttpStatus.ok) {
      return onHttpOk(response);
    } else {
      throw onNotHttpOkException;
    }
  }
}
