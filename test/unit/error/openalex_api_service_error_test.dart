import 'package:artemis_app/src/core/network/dio_client.dart';
import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/data/datasource/remote/openalex_api_service.dart';
import 'package:artemis_app/src/data/models/dtos/work_dto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDioClient extends Mock implements DioClient {}

void main() {
  late OpenalexApiService service;
  late MockDioClient mockClient;

  setUp(() {
    mockClient = MockDioClient();
    service = OpenalexApiService(client: mockClient);

    // Register fallback values for mocktail
    registerFallbackValue(CancelToken());
  });

  group('OpenalexApiService Error Handling', () {
    group('getArticleById', () {
      test('should handle connection timeout error', () async {
        // Arrange
        const articleId = 'W4414161455';
        final dioException = DioException(
          requestOptions: RequestOptions(path: '/works/$articleId'),
          type: DioExceptionType.connectionTimeout,
          error: 'Connection timeout',
        );

        when(
          () => mockClient.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
            cancelToken: any(named: 'cancelToken'),
          ),
        ).thenThrow(dioException);

        // Act
        final result = await service.getArticleById(articleId);

        // Assert
        expect(result, isA<DataFailure<WorkDto>>());
        expect((result as DataFailure).error, isA<Exception>());
        expect(
          (result as DataFailure).error.toString(),
          contains('Connection timeout'),
        );
      });

      test('should handle 404 not found error', () async {
        // Arrange
        const articleId = 'invalid-id';
        final dioException = DioException(
          requestOptions: RequestOptions(path: '/works/$articleId'),
          type: DioExceptionType.badResponse,
          response: Response(
            requestOptions: RequestOptions(path: '/works/$articleId'),
            statusCode: 404,
          ),
        );

        when(
          () => mockClient.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
            cancelToken: any(named: 'cancelToken'),
          ),
        ).thenThrow(dioException);

        // Act
        final result = await service.getArticleById(articleId);

        // Assert
        expect(result, isA<DataFailure<WorkDto>>());
        expect((result as DataFailure).error.toString(), contains('not found'));
      });

      test('should handle 429 too many requests error', () async {
        // Arrange
        const articleId = 'W4414161455';
        final dioException = DioException(
          requestOptions: RequestOptions(path: '/works/$articleId'),
          type: DioExceptionType.badResponse,
          response: Response(
            requestOptions: RequestOptions(path: '/works/$articleId'),
            statusCode: 429,
          ),
        );

        when(
          () => mockClient.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
            cancelToken: any(named: 'cancelToken'),
          ),
        ).thenThrow(dioException);

        // Act
        final result = await service.getArticleById(articleId);

        // Assert
        expect(result, isA<DataFailure<WorkDto>>());
        expect(
          (result as DataFailure).error.toString(),
          contains('Too many requests'),
        );
      });

      test('should handle 500 server error', () async {
        // Arrange
        const articleId = 'W4414161455';
        final dioException = DioException(
          requestOptions: RequestOptions(path: '/works/$articleId'),
          type: DioExceptionType.badResponse,
          response: Response(
            requestOptions: RequestOptions(path: '/works/$articleId'),
            statusCode: 500,
          ),
        );

        when(
          () => mockClient.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
            cancelToken: any(named: 'cancelToken'),
          ),
        ).thenThrow(dioException);

        // Act
        final result = await service.getArticleById(articleId);

        // Assert
        expect(result, isA<DataFailure<WorkDto>>());
        expect(
          (result as DataFailure).error.toString(),
          contains('Server error'),
        );
      });

      test('should handle connection error (no internet)', () async {
        // Arrange
        const articleId = 'W4414161455';
        final dioException = DioException(
          requestOptions: RequestOptions(path: '/works/$articleId'),
          type: DioExceptionType.connectionError,
          error: 'No internet connection',
        );

        when(
          () => mockClient.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
            cancelToken: any(named: 'cancelToken'),
          ),
        ).thenThrow(dioException);

        // Act
        final result = await service.getArticleById(articleId);

        // Assert
        expect(result, isA<DataFailure<WorkDto>>());
        expect(
          (result as DataFailure).error.toString(),
          contains('No internet connection'),
        );
      });

      test('should handle request cancellation', () async {
        // Arrange
        const articleId = 'W4414161455';
        final dioException = DioException(
          requestOptions: RequestOptions(path: '/works/$articleId'),
          type: DioExceptionType.cancel,
        );

        when(
          () => mockClient.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
            cancelToken: any(named: 'cancelToken'),
          ),
        ).thenThrow(dioException);

        // Act
        final result = await service.getArticleById(articleId);

        // Assert
        expect(result, isA<DataFailure<WorkDto>>());
        expect((result as DataFailure).error.toString(), contains('cancelled'));
      });

      test('should handle unexpected errors', () async {
        // Arrange
        const articleId = 'W4414161455';
        final unexpectedError = Exception('Unexpected error');

        when(
          () => mockClient.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
            cancelToken: any(named: 'cancelToken'),
          ),
        ).thenThrow(unexpectedError);

        // Act
        final result = await service.getArticleById(articleId);

        // Assert
        expect(result, isA<DataFailure<WorkDto>>());
        expect(
          (result as DataFailure).error.toString(),
          contains('Unexpected error'),
        );
      });
    });

    group('getArticles error handling', () {
      test('should handle connection timeout in getArticles', () async {
        // Arrange
        final dioException = DioException(
          requestOptions: RequestOptions(path: '/works'),
          type: DioExceptionType.connectionTimeout,
        );

        when(
          () => mockClient.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
            cancelToken: any(named: 'cancelToken'),
          ),
        ).thenThrow(dioException);

        // Act
        final result = await service.getArticles();

        // Assert
        expect(result, isA<DataFailure<List<WorkDto>>>());
      });
    });
  });
}
