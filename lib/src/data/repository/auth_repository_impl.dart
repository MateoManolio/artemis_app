import 'package:artemis_app/src/data/datasource/contracts/auth_datasource.dart';
import 'package:artemis_app/src/domain/contracts/auth_repository.dart';
import 'package:artemis_app/src/domain/entity/user.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final IAuthDatasource _remote;

  AuthRepositoryImpl(this._remote);

  @override
  Stream<User?> authStateChanges() =>
      _remote.authState().map((m) => m?.toDomain());

  @override
  User? get currentUser => _remote.current()?.toDomain();

  @override
  Future<User?> signInWithGoogle() async {
    final userModel = await _remote.signInWithGoogle();
    final user = userModel?.toDomain();
    return user;
  }

  @override
  Future<void> signOut() async {
    await _remote.signOut();
  }
}
