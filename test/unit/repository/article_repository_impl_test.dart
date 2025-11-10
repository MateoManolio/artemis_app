import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/data/models/dtos/work_dto.dart';
import 'package:artemis_app/src/data/repository/article_repository_impl.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';
import '../../helpers/test_helpers.dart';

void main() {
  late ArticleRepositoryImpl repository;
  late MockArticleApiDatasource mockDatasource;

  setUp(() {
    mockDatasource = MockArticleApiDatasource();
    repository = ArticleRepositoryImpl(service: mockDatasource);
  });

  group('ArticleRepositoryImpl', () {
    group('getArticle', () {
      test(
        'should return DataSuccess with article when datasource succeeds',
        () async {
          // Arrange
          const articleId = 'W4414161455';
          final workDto = WorkDto(
            id: 'https://openalex.org/$articleId',
            title: 'Test Article',
            displayName: 'Test Article',
            type: 'article',
            publicationYear: 2024,
          );

          when(
            () => mockDatasource.getArticleById(articleId),
          ).thenAnswer((_) async => createDataSuccess(workDto));

          // Act
          final result = await repository.getArticle(articleId);

          // Assert
          expect(result, isA<DataSuccess<Article>>());
          expect((result as DataSuccess).data, isNotNull);
          verify(() => mockDatasource.getArticleById(articleId)).called(1);
        },
      );

      test('should return DataFailure when datasource fails', () async {
        // Arrange
        const articleId = 'invalid-id';
        final exception = Exception('Article not found');

        when(
          () => mockDatasource.getArticleById(articleId),
        ).thenAnswer((_) async => createDataFailure<WorkDto>(exception));

        // Act
        final result = await repository.getArticle(articleId);

        // Assert
        expect(result, isA<DataFailure<Article>>());
        expect((result as DataFailure).error, equals(exception));
      });
    });

    group('getArticles', () {
      test(
        'should return DataSuccess with articles list when datasource succeeds',
        () async {
          // Arrange
          final workDtos = [
            WorkDto(
              id: 'https://openalex.org/W1',
              title: 'Article 1',
              displayName: 'Article 1',
              type: 'article',
            ),
            WorkDto(
              id: 'https://openalex.org/W2',
              title: 'Article 2',
              displayName: 'Article 2',
              type: 'article',
            ),
          ];

          when(
            () => mockDatasource.getArticles(
              query: any(named: 'query'),
              page: any(named: 'page'),
              perPage: any(named: 'perPage'),
              cancelToken: any(named: 'cancelToken'),
              filters: any(named: 'filters'),
            ),
          ).thenAnswer((_) async => createDataSuccess(workDtos));

          // Act
          final result = await repository.getArticles();

          // Assert
          expect(result, isA<DataSuccess<List<Article>>>());
          expect((result as DataSuccess).data?.length, equals(2));
        },
      );

      test('should propagate DataFailure from datasource', () async {
        // Arrange
        final exception = Exception('Network error');

        when(
          () => mockDatasource.getArticles(
            query: any(named: 'query'),
            page: any(named: 'page'),
            perPage: any(named: 'perPage'),
            cancelToken: any(named: 'cancelToken'),
            filters: any(named: 'filters'),
          ),
        ).thenAnswer((_) async => createDataFailure<List<WorkDto>>(exception));

        // Act
        final result = await repository.getArticles();

        // Assert
        expect(result, isA<DataFailure<List<Article>>>());
        expect((result as DataFailure).error, equals(exception));
      });

      test('should pass parameters correctly to datasource', () async {
        // Arrange
        const query = 'machine learning';
        const page = 2;
        const perPage = 25;
        final cancelToken = CancelToken();

        when(
          () => mockDatasource.getArticles(
            query: query,
            page: page,
            perPage: perPage,
            cancelToken: cancelToken,
            filters: any(named: 'filters'),
          ),
        ).thenAnswer((_) async => createDataSuccess<List<WorkDto>>([]));

        // Act
        await repository.getArticles(
          query: query,
          page: page,
          perPage: perPage,
          cancelToken: cancelToken,
        );

        // Assert
        verify(
          () => mockDatasource.getArticles(
            query: query,
            page: page,
            perPage: perPage,
            cancelToken: cancelToken,
            filters: any(named: 'filters'),
          ),
        ).called(1);
      });
    });

    group('getAutocompleteArticles', () {
      test(
        'should return DataSuccess with articles when datasource succeeds',
        () async {
          // Arrange
          const query = 'test';
          final workDtos = [
            WorkDto(
              id: 'https://openalex.org/W1',
              title: 'Test Article',
              displayName: 'Test Article',
            ),
          ];

          when(
            () => mockDatasource.getAutocompleteArticle(
              query: query,
              filters: null,
              cancelToken: null,
              perPage: null,
            ),
          ).thenAnswer((_) async => createDataSuccess(workDtos));

          // Act
          final result = await repository.getAutocompleteArticles(query: query);

          // Assert
          expect(result, isA<DataSuccess<List<Article>>>());
          expect((result as DataSuccess).data?.length, equals(1));
        },
      );
    });

    group('getRandomArticle', () {
      test('should return DataSuccess with random article', () async {
        // Arrange
        final workDto = WorkDto(
          id: 'https://openalex.org/W123',
          title: 'Random Article',
          displayName: 'Random Article',
        );

        when(
          () => mockDatasource.getRandomArticle(),
        ).thenAnswer((_) async => createDataSuccess(workDto));

        // Act
        final result = await repository.getRandomArticle();

        // Assert
        expect(result, isA<DataSuccess<Article>>());
      });
    });
  });
}
