import 'package:artemis_app/src/domain/usecase/remove_favorite_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';

void main() {
  late RemoveFavoriteUsecase useCase;
  late MockFavoritesRepository mockRepository;

  setUp(() {
    mockRepository = MockFavoritesRepository();
    useCase = RemoveFavoriteUsecase(mockRepository);
  });

  group('RemoveFavoriteUsecase', () {
    test(
      'should call repository removeFavorite with correct articleId',
      () async {
        // Arrange
        const articleId = 'W4414161455';

        // Act
        await useCase.call(articleId);

        // Assert
        verify(() => mockRepository.removeFavorite(articleId)).called(1);
      },
    );

    test('should handle different article IDs', () async {
      // Arrange
      const articleId1 = 'W4414161455';
      const articleId2 = 'W4414161456';

      // Act
      await useCase.call(articleId1);
      await useCase.call(articleId2);

      // Assert
      verify(() => mockRepository.removeFavorite(articleId1)).called(1);
      verify(() => mockRepository.removeFavorite(articleId2)).called(1);
    });
  });
}
