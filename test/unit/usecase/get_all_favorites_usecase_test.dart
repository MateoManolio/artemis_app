import 'package:artemis_app/src/domain/usecase/get_all_favorites_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';
import '../../fixtures/articles_fixture.dart';

void main() {
  late GetAllFavoritesUsecase useCase;
  late MockFavoritesRepository mockRepository;

  setUp(() {
    mockRepository = MockFavoritesRepository();
    useCase = GetAllFavoritesUsecase(mockRepository);
  });

  group('GetAllFavoritesUsecase', () {
    test('should return list of favorite articles', () async {
      // Arrange
      final favorites = [
        ArticlesFixture.customArticle(id: '1', favorite: true),
        ArticlesFixture.customArticle(id: '2', favorite: true),
      ];

      when(() => mockRepository.getAllFavorites())
          .thenAnswer((_) async => favorites);

      // Act
      final result = await useCase.call();

      // Assert
      expect(result, equals(favorites));
      expect(result.length, equals(2));
      verify(() => mockRepository.getAllFavorites()).called(1);
    });

    test('should return empty list when no favorites', () async {
      // Arrange
      when(() => mockRepository.getAllFavorites())
          .thenAnswer((_) async => []);

      // Act
      final result = await useCase.call();

      // Assert
      expect(result, isEmpty);
      verify(() => mockRepository.getAllFavorites()).called(1);
    });
  });
}

