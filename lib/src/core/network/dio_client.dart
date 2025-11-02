import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'retry_interceptor.dart';

class DioClient {
  final String baseUrl;
  final Duration timeout;

  late final Dio _dio;

  DioClient({required this.baseUrl, required this.timeout}) {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: timeout,
        receiveTimeout: timeout,
        sendTimeout: timeout,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'User-Agent': 'artemis_app/1.0.0 (mailto:manoliomateo@gmail.com)',
        },
      ),
    );

    _setupInterceptors();
  }

  void _setupInterceptors() {
    // Add retry interceptor first (will be executed last in error chain)
    // Pass Dio instance via request options extra so retry can access it
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.extra['dio'] = _dio;
          handler.next(options);
        },
      ),
    );

    _dio.interceptors.add(RetryInterceptor());

    // Add logging interceptor
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
          handler.next(options);
        },
        onResponse: (response, handler) {
          debugPrint(
            'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
          );
          handler.next(response);
        },
        onError: (error, handler) {
          debugPrint(
            'ERROR[${error.response?.statusCode}] => PATH: ${error.requestOptions.path}',
          );
          debugPrint('ERROR MESSAGE: ${error.message}');
          handler.next(error);
        },
      ),
    );
  }

  Dio get dio => _dio;

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await _dio.get(
      path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }

  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }
}
