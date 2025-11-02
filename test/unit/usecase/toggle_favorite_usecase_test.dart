import 'package:artemis_app/src/domain/usecase/toggle_favorite_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';
import '../../helpers/test_helpers.dart';
import '../../fixtures/articles_fixture.dart';

void main() {
  late ToggleFavoriteUsecase useCase;
  late MockFavoritesRepository mockRepository;

  setUpAll(() {
    registerFallbackValue(createTestArticle());
  });

  setUp(() {
    mockRepository = MockFavoritesRepository();
    useCase = ToggleFavoriteUsecase(mockRepository);
  });

  group('ToggleFavoriteUsecase', () {
    test('should add favorite when article is not favorite', () async {
      // Arrange
      final article = ArticlesFixture.customArticle(favorite: false);

      // Act
      await useCase.call(article);

      // Assert
      verify(() => mockRepository.addFavorite(article)).called(1);
      verifyNever(() => mockRepository.removeFavorite(any()));
    });

    test('should remove favorite when article is favorite', () async {
      // Arrange
      final article = ArticlesFixture.customArticle(
        id: 'W4414161455',
        favorite: true,
      );

      // Act
      await useCase.call(article);

      // Assert
      verify(() => mockRepository.removeFavorite(article.id)).called(1);
      verifyNever(() => mockRepository.addFavorite(any()));
    });
  });
}

