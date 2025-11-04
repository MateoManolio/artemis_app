import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/domain/usecase/get_articles_details_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';
import '../../helpers/test_helpers.dart';
import '../../fixtures/articles_fixture.dart';

void main() {
  late GetArticlesDetailsUsecase useCase;
  late MockArticleRepository mockRepository;

  setUp(() {
    mockRepository = MockArticleRepository();
    useCase = GetArticlesDetailsUsecase(mockRepository);
  });

  group('GetArticlesDetailsUsecase', () {
    test(
      'should return DataSuccess with article when repository succeeds',
      () async {
        // Arrange
        final testArticle = ArticlesFixture.defaultArticles().first;
        const articleId = 'W4414161455';

        when(
          () => mockRepository.getArticle(articleId),
        ).thenAnswer((_) async => createDataSuccess(testArticle));

        // Act
        final result = await useCase.call(articleId);

        // Assert
        expect(result, isA<DataSuccess<Article>>());
        expect((result as DataSuccess).data, equals(testArticle));
        verify(() => mockRepository.getArticle(articleId)).called(1);
      },
    );

    test('should return DataFailure when repository fails', () async {
      // Arrange
      const articleId = 'invalid-id';
      final exception = Exception('Article not found');

      when(
        () => mockRepository.getArticle(articleId),
      ).thenAnswer((_) async => createDataFailure<Article>(exception));

      // Act
      final result = await useCase.call(articleId);

      // Assert
      expect(result, isA<DataFailure<Article>>());
      expect((result as DataFailure).error, equals(exception));
      verify(() => mockRepository.getArticle(articleId)).called(1);
    });
  });
}
