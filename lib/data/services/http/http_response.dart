import 'dart:convert';

enum HttpResponseStatus {
  error,
  success,
}

class HttpResponse {
  late final HttpResponseStatus status;
  late final dynamic data;
  final int code;
  final String message;

  HttpResponse(dynamic data, this.code, [this.message = '']) {
    if (data is String) {
      this.data = jsonDecode(data);
    } else {
      this.data = data;
    }

    status = code >= 200 && code < 300
        ? HttpResponseStatus.success
        : HttpResponseStatus.error;
  }
}
