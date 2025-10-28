import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/domain/contracts/auth_repository.dart';
import 'package:artemis_app/src/domain/entity/user.dart';

class ObserveAuthStateUsecase {
  final IAuthRepository _repo;
  ObserveAuthStateUsecase(this._repo);

  Stream<User?> call() => _repo.authStateChanges();
}