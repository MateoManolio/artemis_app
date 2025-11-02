import 'package:artemis_app/src/domain/entity/user.dart';
import 'package:artemis_app/src/domain/usecase/observe_auth_state_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';
import '../../helpers/test_helpers.dart';

void main() {
  late ObserveAuthStateUsecase useCase;
  late MockAuthRepository mockRepository;

  setUp(() {
    mockRepository = MockAuthRepository();
    useCase = ObserveAuthStateUsecase(mockRepository);
  });

  group('ObserveAuthStateUsecase', () {
    test('should return stream of user state changes', () async {
      // Arrange
      final testUser = createTestUser();
      final userStream = Stream<User?>.value(testUser);

      when(() => mockRepository.authStateChanges())
          .thenAnswer((_) => userStream);

      // Act
      final stream = useCase.call();

      // Assert
      expect(stream, isA<Stream<User?>>());
      final user = await stream.first;
      expect(user, equals(testUser));
      verify(() => mockRepository.authStateChanges()).called(1);
    });

    test('should return stream with null when user is signed out', () async {
      // Arrange
      final nullStream = Stream<User?>.value(null);

      when(() => mockRepository.authStateChanges())
          .thenAnswer((_) => nullStream);

      // Act
      final stream = useCase.call();

      // Assert
      final user = await stream.first;
      expect(user, isNull);
    });
  });
}

