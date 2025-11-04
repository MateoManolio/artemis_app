import 'package:artemis_app/src/domain/usecase/sign_out_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';

void main() {
  late SignOutUsecase useCase;
  late MockAuthRepository mockRepository;

  setUp(() {
    mockRepository = MockAuthRepository();
    useCase = SignOutUsecase(mockRepository);
  });

  group('SignOutUsecase', () {
    test('should call repository signOut', () async {
      // Arrange
      when(() => mockRepository.signOut()).thenAnswer((_) async => {});

      // Act
      await useCase.call();

      // Assert
      verify(() => mockRepository.signOut()).called(1);
    });
  });
}
