import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AppInterceptors extends Interceptor {
  @override
  Future<dynamic> onError(err, ErrorInterceptorHandler handler) async {
    if (err.response!.statusCode == 400) {
      if (err.response!.data["message"] != null) {
        debugPrint(err.response!.data["message"]);
      }
    }
    if (err.response!.statusCode == 429) {
      if (err.response!.data["message"] != null) {}
    }

    return err;
  }
}
