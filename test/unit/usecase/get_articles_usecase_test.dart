import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/domain/usecase/get_articles_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';
import '../../helpers/test_helpers.dart';
import '../../fixtures/articles_fixture.dart';

void main() {
  late GetArticlesUsecase useCase;
  late MockArticleRepository mockRepository;

  setUp(() {
    mockRepository = MockArticleRepository();
    useCase = GetArticlesUsecase(mockRepository);
  });

  group('GetArticlesUsecase', () {
    test('should return DataSuccess with articles when repository succeeds', () async {
      // Arrange
      final testArticles = ArticlesFixture.defaultArticles();
      final params = GetArticlesParams(
        query: 'machine learning',
        page: 1,
        perPage: 10,
      );

      when(() => mockRepository.getArticles(
            query: params.query,
            page: params.page,
            perPage: params.perPage,
            cancelToken: params.cancelToken,
            filters: params.filters,
          )).thenAnswer((_) async => createDataSuccess(testArticles));

      // Act
      final result = await useCase.call(params);

      // Assert
      expect(result, isA<DataSuccess<List<Article>>>());
      expect((result as DataSuccess).data, equals(testArticles));
      verify(() => mockRepository.getArticles(
            query: params.query,
            page: params.page,
            perPage: params.perPage,
            cancelToken: params.cancelToken,
            filters: params.filters,
          )).called(1);
    });

    test('should return DataFailure when repository fails', () async {
      // Arrange
      final exception = Exception('Network error');
      final params = GetArticlesParams(query: 'test');

      when(() => mockRepository.getArticles(
            query: any(named: 'query'),
            page: any(named: 'page'),
            perPage: any(named: 'perPage'),
            cancelToken: any(named: 'cancelToken'),
            filters: any(named: 'filters'),
          )).thenAnswer((_) async => createDataFailure<List<Article>>(exception));

      // Act
      final result = await useCase.call(params);

      // Assert
      expect(result, isA<DataFailure<List<Article>>>());
      expect((result as DataFailure).error, equals(exception));
    });

    test('should handle pagination correctly', () async {
      // Arrange
      final params = GetArticlesParams(
        query: null,
        page: 2,
        perPage: 25,
      );

      when(() => mockRepository.getArticles(
            query: any(named: 'query'),
            page: 2,
            perPage: 25,
            cancelToken: any(named: 'cancelToken'),
            filters: any(named: 'filters'),
          )).thenAnswer((_) async => createDataSuccess<List<Article>>([]));

      // Act
      await useCase.call(params);

      // Assert
      verify(() => mockRepository.getArticles(
            query: null,
            page: 2,
            perPage: 25,
            cancelToken: any(named: 'cancelToken'),
            filters: any(named: 'filters'),
          )).called(1);
    });

    test('should handle cancel token', () async {
      // Arrange
      final cancelToken = CancelToken();
      final params = GetArticlesParams(
        query: 'test',
        cancelToken: cancelToken,
      );

      when(() => mockRepository.getArticles(
            query: any(named: 'query'),
            page: any(named: 'page'),
            perPage: any(named: 'perPage'),
            cancelToken: cancelToken,
            filters: any(named: 'filters'),
          )).thenAnswer((_) async => createDataSuccess<List<Article>>([]));

      // Act
      await useCase.call(params);

      // Assert
      verify(() => mockRepository.getArticles(
            query: 'test',
            page: any(named: 'page'),
            perPage: any(named: 'perPage'),
            cancelToken: cancelToken,
            filters: any(named: 'filters'),
          )).called(1);
    });
  });
}

