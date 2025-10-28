import 'package:artemis_app/src/domain/contracts/auth_repository.dart';
import 'package:artemis_app/src/core/interfaces/i_usecase.dart';

class SignOutUsecase implements IUseCaseCommand<void>{
  final IAuthRepository _repo;
  SignOutUsecase(this._repo);
  
  @override
  Future<void> call() => _repo.signOut();
}