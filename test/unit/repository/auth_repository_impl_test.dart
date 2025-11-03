import 'package:artemis_app/src/data/models/user_model.dart';
import 'package:artemis_app/src/data/repository/auth_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';
import '../../helpers/test_helpers.dart';

void main() {
  late AuthRepositoryImpl repository;
  late MockAuthDatasource mockDatasource;
  late MockUserLocalServiceDatasource mockUserLocalService;

  setUpAll(() {
    registerFallbackValue(createTestUser());
  });

  setUp(() {
    mockDatasource = MockAuthDatasource();
    mockUserLocalService = MockUserLocalServiceDatasource();
    repository = AuthRepositoryImpl(mockDatasource, mockUserLocalService);
  });

  group('AuthRepositoryImpl', () {
    group('signInWithGoogle', () {
      test('should return User when sign in succeeds', () async {
        // Arrange
        final userModel = UserModel(
          uid: 'test-uid',
          email: 'test@example.com',
          displayName: 'Test User',
          photoUrl: 'https://example.com/photo.jpg',
        );
        final expectedUser = userModel.toDomain();

        when(
          () => mockDatasource.signInWithGoogle(),
        ).thenAnswer((_) async => userModel);
        when(
          () => mockUserLocalService.saveUser(any()),
        ).thenAnswer((_) async {});

        // Act
        final result = await repository.signInWithGoogle();

        // Assert
        expect(result, isNotNull);
        expect(result?.uid, equals(expectedUser.uid));
        expect(result?.email, equals(expectedUser.email));
        verify(() => mockDatasource.signInWithGoogle()).called(1);
      });

      test('should return null when sign in fails', () async {
        // Arrange
        when(
          () => mockDatasource.signInWithGoogle(),
        ).thenAnswer((_) async => null);

        // Act
        final result = await repository.signInWithGoogle();

        // Assert
        expect(result, isNull);
      });
    });

    group('signOut', () {
      test('should call datasource signOut', () async {
        // Arrange
        when(() => mockDatasource.signOut()).thenAnswer((_) async => {});
        when(
          () => mockUserLocalService.clearUser(),
        ).thenAnswer((_) async => {});

        // Act
        await repository.signOut();

        // Assert
        verify(() => mockDatasource.signOut()).called(1);
      });
    });

    group('currentUser', () {
      test('should return current user from datasource', () {
        // Arrange
        final userModel = UserModel(
          uid: 'current-uid',
          email: 'current@example.com',
        );

        when(() => mockDatasource.current()).thenReturn(userModel);

        // Act
        final result = repository.currentUser;

        // Assert
        expect(result, isNotNull);
        expect(result?.uid, equals('current-uid'));
        verify(() => mockDatasource.current()).called(1);
      });

      test('should return null when no current user', () {
        // Arrange
        when(() => mockDatasource.current()).thenReturn(null);

        // Act
        final result = repository.currentUser;

        // Assert
        expect(result, isNull);
      });
    });

    group('authStateChanges', () {
      test('should return stream of User state changes', () async {
        // Arrange
        final userModel = UserModel(
          uid: 'stream-uid',
          email: 'stream@example.com',
        );
        final userStream = Stream<UserModel?>.value(userModel);

        when(() => mockDatasource.authState()).thenAnswer((_) => userStream);

        // Act
        final stream = repository.authStateChanges();
        final user = await stream.first;

        // Assert
        expect(user, isNotNull);
        expect(user?.uid, equals('stream-uid'));
        verify(() => mockDatasource.authState()).called(1);
      });
    });
  });
}
