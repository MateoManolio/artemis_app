import 'package:artemis_app/src/domain/usecase/sign_in_with_google_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';
import '../../helpers/test_helpers.dart';

void main() {
  late SignInWithGoogleUsecase useCase;
  late MockAuthRepository mockRepository;

  setUp(() {
    mockRepository = MockAuthRepository();
    useCase = SignInWithGoogleUsecase(mockRepository);
  });

  group('SignInWithGoogleUsecase', () {
    test('should return user when sign in succeeds', () async {
      // Arrange
      final testUser = createTestUser();

      when(
        () => mockRepository.signInWithGoogle(),
      ).thenAnswer((_) async => testUser);

      // Act
      final result = await useCase.call();

      // Assert
      expect(result, equals(testUser));
      verify(() => mockRepository.signInWithGoogle()).called(1);
    });

    test('should return null when sign in fails', () async {
      // Arrange
      when(
        () => mockRepository.signInWithGoogle(),
      ).thenAnswer((_) async => null);

      // Act
      final result = await useCase.call();

      // Assert
      expect(result, isNull);
      verify(() => mockRepository.signInWithGoogle()).called(1);
    });
  });
}
