import 'package:dio/dio.dart';

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
          // OpenAlex recomienda incluir un email de contacto en las peticiones
          'User-Agent': 'artemis_app/1.0.0 (mailto:your-email@example.com)',
        },
      ),
    );

    _setupInterceptors();
  }

  void _setupInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Log de las peticiones en desarrollo
          // ignore: avoid_print
          // print('REQUEST[${options.method}] => PATH: ${options.path}');
          handler.next(options);
        },
        onResponse: (response, handler) {
          // ignore: avoid_print
          // print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
          handler.next(response);
        },
        onError: (error, handler) {
          // ignore: avoid_print
          // print('ERROR[${error.response?.statusCode}] => PATH: ${error.requestOptions.path}');
          // ignore: avoid_print
          // print('ERROR MESSAGE: ${error.message}');
          handler.next(error);
        },
      ),
    );
  }

  Dio get dio => _dio;

  // Método helper para peticiones GET
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

  // Método helper para peticiones POST
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
