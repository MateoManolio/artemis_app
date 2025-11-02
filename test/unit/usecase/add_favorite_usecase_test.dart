import 'package:artemis_app/src/domain/usecase/add_favorite_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';
import '../../fixtures/articles_fixture.dart';

void main() {
  late AddFavoriteUsecase useCase;
  late MockFavoritesRepository mockRepository;

  setUp(() {
    mockRepository = MockFavoritesRepository();
    useCase = AddFavoriteUsecase(mockRepository);
  });

  group('AddFavoriteUsecase', () {
    test('should call repository addFavorite with correct article', () async {
      // Arrange
      final article = ArticlesFixture.defaultArticles().first;

      // Act
      await useCase.call(article);

      // Assert
      verify(() => mockRepository.addFavorite(article)).called(1);
    });

    test('should handle favorite article correctly', () async {
      // Arrange
      final favoriteArticle = ArticlesFixture.favoriteArticle();

      // Act
      await useCase.call(favoriteArticle);

      // Assert
      verify(() => mockRepository.addFavorite(favoriteArticle)).called(1);
    });
  });
}

