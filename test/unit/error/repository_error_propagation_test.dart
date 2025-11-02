import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/data/models/dtos/work_dto.dart';
import 'package:artemis_app/src/data/repository/article_repository_impl.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
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

  group('Repository Error Propagation', () {
    test('should propagate DataFailure from datasource to repository', () async {
      // Arrange
      const articleId = 'W4414161455';
      final exception = Exception('Network error');

      when(() => mockDatasource.getArticleById(articleId))
          .thenAnswer((_) async => createDataFailure<WorkDto>(exception));

      // Act
      final result = await repository.getArticle(articleId);

      // Assert
      expect(result, isA<DataFailure<Article>>());
      expect((result as DataFailure).error, equals(exception));
    });

    test('should propagate errors in getArticles', () async {
      // Arrange
      final exception = Exception('Failed to fetch articles');

      when(() => mockDatasource.getArticles(
            query: any(named: 'query'),
            page: any(named: 'page'),
            perPage: any(named: 'perPage'),
            cancelToken: any(named: 'cancelToken'),
            filters: any(named: 'filters'),
          )).thenAnswer((_) async => createDataFailure<List<WorkDto>>(exception));

      // Act
      final result = await repository.getArticles();

      // Assert
      expect(result, isA<DataFailure<List<Article>>>());
      expect((result as DataFailure).error, equals(exception));
    });

    test('should handle repository catch block errors', () async {
      // Arrange - Simulate an exception thrown in the repository
      when(() => mockDatasource.getArticleById(any()))
          .thenThrow(Exception('Unexpected repository error'));

      // Act
      final result = await repository.getArticle('test-id');

      // Assert - Repository should catch and return DataFailure
      expect(result, isA<DataFailure<Article>>());
      expect((result as DataFailure).error.toString(), contains('Repository error'));
    });
  });
}

