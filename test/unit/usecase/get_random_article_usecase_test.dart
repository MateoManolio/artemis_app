import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/domain/usecase/get_random_article_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';
import '../../helpers/test_helpers.dart';
import '../../fixtures/articles_fixture.dart';

void main() {
  late GetRandomArticleUsecase useCase;
  late MockArticleRepository mockRepository;

  setUp(() {
    mockRepository = MockArticleRepository();
    useCase = GetRandomArticleUsecase(mockRepository);
  });

  group('GetRandomArticleUsecase', () {
    test(
      'should return DataSuccess with article when repository succeeds',
      () async {
        // Arrange
        final testArticle = ArticlesFixture.defaultArticles().first;

        when(
          () => mockRepository.getRandomArticle(),
        ).thenAnswer((_) async => createDataSuccess(testArticle));

        // Act
        final result = await useCase.call();

        // Assert
        expect(result, isA<DataSuccess<Article>>());
        expect((result as DataSuccess).data, equals(testArticle));
        verify(() => mockRepository.getRandomArticle()).called(1);
      },
    );

    test('should return DataFailure when repository fails', () async {
      // Arrange
      final exception = Exception('No articles available');

      when(
        () => mockRepository.getRandomArticle(),
      ).thenAnswer((_) async => createDataFailure<Article>(exception));

      // Act
      final result = await useCase.call();

      // Assert
      expect(result, isA<DataFailure<Article>>());
      expect((result as DataFailure).error, equals(exception));
    });
  });
}
