import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/domain/contracts/auth_repository.dart';
import 'package:artemis_app/src/domain/entity/user.dart';

class SignInWithGoogleUsecase implements IUseCaseCommand<User?>{
  final IAuthRepository _repo;
  SignInWithGoogleUsecase(this._repo);
  
  @override
  Future<User?> call() async => _repo.signInWithGoogle();
}
