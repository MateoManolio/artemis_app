import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/domain/usecase/get_autocomplete_articles_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';
import '../../helpers/test_helpers.dart';
import '../../fixtures/articles_fixture.dart';

void main() {
  late GetAutocompletedArticlesUsecase useCase;
  late MockArticleRepository mockRepository;

  setUp(() {
    mockRepository = MockArticleRepository();
    useCase = GetAutocompletedArticlesUsecase(mockRepository);
  });

  group('GetAutocompletedArticlesUsecase', () {
    test(
      'should return DataSuccess with articles when repository succeeds',
      () async {
        // Arrange
        final testArticles = ArticlesFixture.defaultArticles();
        const query = 'machine learning';

        when(
          () => mockRepository.getAutocompleteArticles(query),
        ).thenAnswer((_) async => createDataSuccess(testArticles));

        // Act
        final result = await useCase.call(query);

        // Assert
        expect(result, isA<DataSuccess<List<Article>>>());
        expect((result as DataSuccess).data, equals(testArticles));
        verify(() => mockRepository.getAutocompleteArticles(query)).called(1);
      },
    );

    test('should return DataFailure when repository fails', () async {
      // Arrange
      const query = 'test';
      final exception = Exception('Network error');

      when(
        () => mockRepository.getAutocompleteArticles(query),
      ).thenAnswer((_) async => createDataFailure<List<Article>>(exception));

      // Act
      final result = await useCase.call(query);

      // Assert
      expect(result, isA<DataFailure<List<Article>>>());
      expect((result as DataFailure).error, equals(exception));
    });

    test('should handle empty query', () async {
      // Arrange
      const query = '';

      when(
        () => mockRepository.getAutocompleteArticles(query),
      ).thenAnswer((_) async => createDataSuccess<List<Article>>([]));

      // Act
      final result = await useCase.call(query);

      // Assert
      expect(result, isA<DataSuccess<List<Article>>>());
      expect((result as DataSuccess).data, isEmpty);
    });
  });
}
