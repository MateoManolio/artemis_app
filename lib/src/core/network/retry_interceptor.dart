import 'dart:async';
import 'package:dio/dio.dart';

/// Interceptor that automatically retries failed requests with exponential backoff
///
/// Retries on:
/// - HTTP 429 (Too Many Requests)
/// - HTTP 5xx (Server errors: 500, 502, 503, 504)
/// - Connection timeouts
/// - Connection errors
///
/// Does NOT retry on:
/// - HTTP 4xx (except 429)
/// - Request cancellation
class RetryInterceptor extends Interceptor {
  final int maxRetries;
  final Duration baseDelay;
  final Duration maxDelay;

  RetryInterceptor({
    this.maxRetries = 3,
    this.baseDelay = const Duration(seconds: 1),
    this.maxDelay = const Duration(seconds: 30),
  });

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final retryCount = err.requestOptions.extra['retryCount'] as int? ?? 0;

    // Don't retry if already exceeded max retries
    if (retryCount >= maxRetries) {
      return handler.next(err);
    }

    // Don't retry if request was cancelled
    if (err.type == DioExceptionType.cancel) {
      return handler.next(err);
    }

    // Check if error is retryable
    if (!_isRetryableError(err)) {
      return handler.next(err);
    }

    // Calculate exponential backoff delay
    final delay = _calculateDelay(retryCount);

    // Wait before retrying
    await Future.delayed(delay);

    // Check if request was cancelled during wait
    if (err.requestOptions.cancelToken?.isCancelled == true) {
      return handler.next(err);
    }

    // Get Dio instance from request options or create new one
    Dio dioInstance;
    if (err.requestOptions.extra.containsKey('dio')) {
      dioInstance = err.requestOptions.extra['dio'] as Dio;
    } else {
      // Fallback: create new Dio instance with same base options
      dioInstance = Dio(
        BaseOptions(
          baseUrl: err.requestOptions.baseUrl,
          connectTimeout: err.requestOptions.connectTimeout,
          receiveTimeout: err.requestOptions.receiveTimeout,
          sendTimeout: err.requestOptions.sendTimeout,
          headers: err.requestOptions.headers,
        ),
      );
    }

    // Create new request options with updated retry count
    final options = err.requestOptions.copyWith(
      extra: {
        ...err.requestOptions.extra,
        'retryCount': retryCount + 1,
        'dio': dioInstance,
      },
    );

    try {
      // Retry the request
      final response = await dioInstance.fetch(options);
      return handler.resolve(response);
    } on DioException catch (e) {
      // If retry also fails, continue with error
      return handler.next(e);
    }
  }

  /// Checks if an error should be retried
  bool _isRetryableError(DioException err) {
    // Retry on connection errors and timeouts
    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.connectionError) {
      return true;
    }

    // Retry on specific HTTP status codes
    if (err.type == DioExceptionType.badResponse) {
      final statusCode = err.response?.statusCode;
      if (statusCode == null) return false;

      // Retry on 429 (Too Many Requests)
      if (statusCode == 429) {
        return true;
      }

      // Retry on 5xx server errors (500, 502, 503, 504)
      if (statusCode >= 500 && statusCode < 600) {
        // Retry common server errors
        if ([500, 502, 503, 504].contains(statusCode)) {
          return true;
        }
      }

      // Don't retry on 4xx errors (except 429 which is handled above)
      if (statusCode >= 400 && statusCode < 500) {
        return false;
      }
    }

    return false;
  }

  /// Calculates exponential backoff delay
  /// Formula: min(baseDelay * 2^retryCount, maxDelay)
  Duration _calculateDelay(int retryCount) {
    final exponentialDelay = baseDelay * (1 << retryCount); // 2^retryCount
    return exponentialDelay > maxDelay ? maxDelay : exponentialDelay;
  }
}

// Extension for testing purposes
extension RetryInterceptorTest on RetryInterceptor {
  /// Exposes _calculateDelay for testing
  Duration calculateDelay(int retryCount) => _calculateDelay(retryCount);

  /// Exposes _isRetryableError for testing
  bool testIsRetryableError(DioException err) => _isRetryableError(err);
}
