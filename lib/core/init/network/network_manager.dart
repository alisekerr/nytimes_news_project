import 'package:dio/dio.dart';

import '../../constants/enums/locale_keys_enum.dart';
import '../interceptors/app_interceptors.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String serviceUrl = "http://194.31.79.54:5050/api/v1";

class NetworkManager {
  late Dio _dio;
  late String _baseUrl;
  late Map<String, dynamic> _headers;

  NetworkManager() {
    _initOptions();
    _dio.interceptors.add(AppInterceptors());
  }

  _initOptions() {
    BaseOptions baseOptions = BaseOptions();
    _baseUrl = baseOptions.baseUrl = serviceUrl;
    _headers = baseOptions.headers = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Accept': 'application/json;charset=UTF-8'
    };
    _dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        headers: _headers,
      ),
    );
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: false,
        maxWidth: 250,
      ),
    );
  }

  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _dio.get(
      path,
      queryParameters: queryParameters,
    );
  }

  Future<Response> getWithHeaders({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _dio.get(
      path,
      options: Options(headers: headers),
      queryParameters: queryParameters,
    );
    return response;
  }
}
