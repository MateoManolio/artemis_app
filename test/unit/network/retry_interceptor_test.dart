import 'package:artemis_app/src/core/network/retry_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RetryInterceptor', () {
    test('should use exponential backoff strategy', () {
      // Arrange
      final interceptor = RetryInterceptor(
        maxRetries: 3,
        baseDelay: const Duration(milliseconds: 100),
        maxDelay: const Duration(seconds: 10),
      );

      // Act
      final delay0 = interceptor.calculateDelay(0);
      final delay1 = interceptor.calculateDelay(1);
      final delay2 = interceptor.calculateDelay(2);
      final delay3 = interceptor.calculateDelay(3);

      // Assert
      // Should be exponential: 100ms, 200ms, 400ms, 800ms
      expect(delay0.inMilliseconds, equals(100));
      expect(delay1.inMilliseconds, equals(200));
      expect(delay2.inMilliseconds, equals(400));
      expect(delay3.inMilliseconds, equals(800));
    });

    test('should respect max delay cap', () {
      // Arrange
      final interceptor = RetryInterceptor(
        maxRetries: 10,
        baseDelay: const Duration(seconds: 10),
        maxDelay: const Duration(seconds: 30),
      );

      // Act
      final delay5 = interceptor.calculateDelay(5);
      final delay10 = interceptor.calculateDelay(10);

      // Assert
      // Should cap at maxDelay (30s) even if exponential would be higher
      expect(delay5.inSeconds, lessThanOrEqualTo(30));
      expect(delay10.inSeconds, lessThanOrEqualTo(30));
    });

    test('should identify retryable errors - 429', () {
      // Arrange
      final interceptor = RetryInterceptor();
      final error = DioException(
        requestOptions: RequestOptions(path: '/test'),
        type: DioExceptionType.badResponse,
        response: Response(
          requestOptions: RequestOptions(path: '/test'),
          statusCode: 429,
        ),
      );

      // Act & Assert
      expect(interceptor.testIsRetryableError(error), isTrue);
    });

    test('should identify retryable errors - 5xx', () {
      // Arrange
      final interceptor = RetryInterceptor();
      final statusCodes = [500, 502, 503, 504];

      for (final statusCode in statusCodes) {
        final error = DioException(
          requestOptions: RequestOptions(path: '/test'),
          type: DioExceptionType.badResponse,
          response: Response(
            requestOptions: RequestOptions(path: '/test'),
            statusCode: statusCode,
          ),
        );

        // Act & Assert
        expect(
          interceptor.testIsRetryableError(error),
          isTrue,
          reason: 'Status $statusCode should be retryable',
        );
      }
    });

    test('should not retry on 4xx errors (except 429)', () {
      // Arrange
      final interceptor = RetryInterceptor();
      final nonRetryableCodes = [400, 401, 403, 404];

      for (final statusCode in nonRetryableCodes) {
        final error = DioException(
          requestOptions: RequestOptions(path: '/test'),
          type: DioExceptionType.badResponse,
          response: Response(
            requestOptions: RequestOptions(path: '/test'),
            statusCode: statusCode,
          ),
        );

        // Act & Assert
        expect(
          interceptor.testIsRetryableError(error),
          isFalse,
          reason: 'Status $statusCode should not be retryable',
        );
      }
    });

    test('should identify retryable errors - connection timeout', () {
      // Arrange
      final interceptor = RetryInterceptor();
      final error = DioException(
        requestOptions: RequestOptions(path: '/test'),
        type: DioExceptionType.connectionTimeout,
      );

      // Act & Assert
      expect(interceptor.testIsRetryableError(error), isTrue);
    });

    test('should identify retryable errors - connection error', () {
      // Arrange
      final interceptor = RetryInterceptor();
      final error = DioException(
        requestOptions: RequestOptions(path: '/test'),
        type: DioExceptionType.connectionError,
      );

      // Act & Assert
      expect(interceptor.testIsRetryableError(error), isTrue);
    });

    test('should not retry on cancellation', () {
      // Arrange
      final interceptor = RetryInterceptor();
      final error = DioException(
        requestOptions: RequestOptions(path: '/test'),
        type: DioExceptionType.cancel,
      );

      // Act & Assert
      expect(interceptor.testIsRetryableError(error), isFalse);
    });
  });
}
